# odin-soup cheat sheet

One screen per job: the calls a program makes, in the order it makes them, and the few rules
worth remembering. Every `soup.` name here is a public declaration in [API.md](API.md), and
`make lint` fails when one is not. The reference is libsoup 3's own documentation; this is the
idiom layer over the generated names.

Conventions that hold everywhere: `import "soup:soup"` beside `glib:glib`, `glib:gio` and
`glib:gobject` ([Use](../README.md#use)); a procedure is the C name without `soup_`, a type the
C name without `Soup`; a C string is a `cstring`; a call that can fail takes `^^glib.Error` last
and returns nil or false (free the error with `glib.error_free`); flag sets are `bit_set`s, so
`{.MESSAGE_NO_REDIRECT}` is the value ([PATCHED.md](PATCHED.md#flag-sets)). A callback is a
`proc "c"`: its first line is `context = app_ctx`, the `runtime.Context` saved at startup.

## soup:Session — send a request, read the answer

```odin
import "glib:glib"
import "glib:gio"
import "glib:gobject"
import "soup:soup"

// name, value pairs, ended by rawptr(nil); give every value its exact C type
session := soup.session_new_with_options("timeout", c.uint(30), cstring("max-conns-per-host"), c.int(4), rawptr(nil))
defer gobject.object_unref(session)          // the caller owns what a _new returns
soup.session_set_user_agent(session, "app/1.0")

uri := glib.uri_parse("https://example.com/api?q=1", soup.HTTP_URI_FLAGS, nil)
defer glib.uri_unref(uri)
msg := soup.message_new_from_uri(soup.METHOD_POST, uri)    // or soup.message_new("GET", "https://…")
defer gobject.object_unref(msg)
soup.message_headers_append(soup.message_get_request_headers(msg), "Accept", "application/json")
payload := glib.bytes_new(raw_data(body), glib.size(len(body)))
soup.message_set_request_body_from_bytes(msg, "application/json", payload)   // takes its own ref
glib.bytes_unref(payload)

cancel := gio.cancellable_new()
defer gobject.object_unref(cancel)
soup.session_send_and_read_async(session, msg, glib.PRIORITY_DEFAULT, cancel, on_read, nil)
gio.cancellable_cancel(cancel)               // from any thread; on_read then gets an error

on_read :: proc "c" (source: ^gobject.Object, res: [^]gio.AsyncResult, data: rawptr) {
	context = app_ctx
	err: ^glib.Error
	bytes := soup.session_send_and_read_finish((^soup.Session)(source), res, &err)
	if bytes == nil { glib.error_free(err); return }
	defer glib.bytes_unref(bytes)
	size: glib.size
	body := glib.bytes_get_data(bytes, &size)       // valid while bytes lives
}
```

| remember | |
|---|---|
| `_finish` runs inside the callback, on the thread that iterates the session's `GMainContext` | libsoup objects are not thread-safe; hop to that thread before touching one |
| `session_send_and_read_*` buffers the body; `session_send_*` returns a `gio.InputStream` to read in pieces | the stream must be closed and unreffed ([odin-web client](../../odin-web/client/net.odin)) |
| `msg` stays valid while you hold your ref; read the status after `_finish` with `soup.message_get_status(msg)` | a 404 is a successful `_finish`, not an error |
| Variadic constructors take no type conversion | an untyped `30` is an `int`, not the `guint` libsoup reads: write `c.uint(30)` |
| The finish procedure's session is the `source` cast back | `(^soup.Session)(source)` |

## soup:Message — headers and bodies

```odin
import "glib:glib"
import "soup:soup"

hdrs := soup.message_get_response_headers(msg)     // borrowed: valid while msg lives
ctype := soup.message_headers_get_content_type(hdrs, nil)   // "text/html", parameters dropped; nil when absent
n := soup.message_headers_get_content_length(hdrs)           // i64; check the encoding first
if soup.message_headers_get_encoding(hdrs) == .CONTENT_LENGTH { n = soup.message_headers_get_content_length(hdrs) }
loc := soup.message_headers_get_one(hdrs, "Location")        // first value, case-insensitive; nil if none
soup.message_headers_append(hdrs, "X-One", "1")              // keeps earlier values of the name
soup.message_headers_remove(hdrs, "X-One")

iter: soup.MessageHeadersIter
soup.message_headers_iter_init(&iter, hdrs)
name, value: cstring
for soup.message_headers_iter_next(&iter, &name, &value) { _ = string(name) }   // in wire order

soup.message_add_flags(msg, {.MESSAGE_NO_REDIRECT})          // the redirect arrives as the answer
status := soup.message_get_status(msg)                       // soup.Status: .OK .NOT_FOUND .NO_CONTENT …
phrase := soup.status_get_phrase(u32(status))                // "Not Found"
http2 := soup.message_get_http_version(msg) == .HTTP_2_0
final := soup.message_get_uri(msg)                           // after redirects; a ^glib.Uri, borrowed
```

| remember | |
|---|---|
| A `cstring` from a getter points into the message | copy it (`strings.clone`) before the message goes |
| `hdrs` parameters are `[^]MessageHeaders`; a `^MessageHeaders` converts | pass the getter's result as it is |
| Flag and some enum members keep their C prefix | `.MESSAGE_NO_REDIRECT`, `.SERVER_LISTEN_HTTPS`; `Status`, `Encoding` and `HTTPVersion` are bare. Check [API.md](API.md) |
| Signals use the GObject helpers | `gobject.signal_connect(msg, "got-headers", on_got_headers, data)`; the handler is `proc "c" (msg: ^soup.Message, data: rawptr)` |
| `soup.HTTP_URI_FLAGS` is the flag set the macro ORs | pass it to `glib.uri_parse` and `glib.uri_parse_relative` |

## soup:Server — answer requests

```odin
import "glib:glib"
import "glib:gobject"
import "soup:soup"

server := soup.server_new(nil)                      // "tls-certificate", cert, rawptr(nil) for HTTPS
defer gobject.object_unref(server)
soup.server_add_handler(server, nil, on_request, nil, nil)   // nil path: every path; longest prefix wins
gobject.signal_connect(server, "request-started", on_started, nil)

err: ^glib.Error
if !bool(soup.server_listen_local(server, 8080, {}, &err)) {     // {.SERVER_LISTEN_HTTPS} for TLS
	glib.error_free(err)                                         // or soup.server_listen_all for every interface
}
defer soup.server_disconnect(server)

on_request :: proc "c" (server: ^soup.Server, msg: ^soup.ServerMessage, path: cstring, query: ^glib.HashTable, data: rawptr) {
	context = app_ctx
	if string(soup.server_message_get_method(msg)) != soup.METHOD_GET {
		soup.server_message_set_status(msg, 405, nil)
		return
	}
	ua := soup.message_headers_get_one(soup.server_message_get_request_headers(msg), "User-Agent")
	body := "hello"
	soup.server_message_set_response(msg, "text/plain", .MEMORY_COPY, cstring(raw_data(body)), u64(len(body)))
	soup.server_message_set_status(msg, 200, nil)
}

on_started :: proc "c" (server: ^soup.Server, msg: ^soup.ServerMessage, data: rawptr) {
	context = app_ctx
	gobject.signal_connect(msg, "got-headers", on_headers, data)    // before the body is read
}

on_headers :: proc "c" (msg: ^soup.ServerMessage, data: rawptr) {
	context = app_ctx
	soup.server_message_pause(msg)                    // answer later: unpause when ready
}
```

| remember | |
|---|---|
| Set a status on every path out of the handler | one left unset is libsoup's to answer, and not with a 2xx |
| `.MEMORY_COPY` copies the body; `.MEMORY_STATIC` borrows a literal; `.MEMORY_TAKE` frees with `g_free` | an Odin string is `.MEMORY_COPY` |
| `server_message_pause` keeps the message until `server_message_unpause`, called on the server's own thread | keep a ref (`gobject.object_ref`) while it waits |
| A message kept past its callback needs `gobject.object_ref`, dropped in its `"finished"` and `"disconnected"` handlers | the `ServerMessage` belongs to the server |
| `server_listen_*` takes a port; `soup.server_get_uris` says which one was bound | `0` picks a free port |

## soup:Websocket and cookies

```odin
import "glib:glib"
import "glib:gio"
import "glib:gobject"
import "soup:soup"

msg := soup.message_new("GET", "wss://example.com/live")
defer gobject.object_unref(msg)
soup.session_websocket_connect_async(session, msg, nil, nil, glib.PRIORITY_DEFAULT, nil, on_connected, nil)

on_connected :: proc "c" (source: ^gobject.Object, res: [^]gio.AsyncResult, data: rawptr) {
	context = app_ctx
	err: ^glib.Error
	conn := soup.session_websocket_connect_finish((^soup.Session)(source), res, &err)   // you own conn
	if conn == nil { glib.error_free(err); return }
	gobject.signal_connect(conn, "message", on_frame, nil)
	gobject.signal_connect(conn, "closed", on_closed, nil)
	soup.websocket_connection_send_text(conn, "hello")
	soup.websocket_connection_close(conn, u16(soup.WebsocketCloseCode.WEBSOCKET_CLOSE_NORMAL), nil)
}

on_frame :: proc "c" (conn: ^soup.WebsocketConnection, kind: soup.WebsocketDataType, frame: ^glib.Bytes, data: rawptr) {
	context = app_ctx
}

on_closed :: proc "c" (conn: ^soup.WebsocketConnection, data: rawptr) {
	context = app_ctx
	code := soup.websocket_connection_get_close_code(conn)
}

jar := soup.cookie_jar_new()
soup.session_add_feature(session, (^soup.SessionFeature)(jar))   // the session takes its own ref
gobject.object_unref(jar)
ck := soup.cookie_new("sid", "abc", "example.com", "/", -1)      // max_age -1: a session cookie
soup.cookie_set_secure(ck, true)
soup.cookie_jar_add_cookie(jar, ck)                              // takes ck: do not free it
```

| remember | |
|---|---|
| Close the connection and unref it when `"closed"` fires | `websocket_connection_get_state` says whether it is `.OPEN` |
| Errors are in the `soup.websocket_error_quark()` and `soup.session_error_quark()` domains | `err.domain == soup.session_error_quark()` before reading `err.code` |
| `cookie_jar_add_cookie` takes the cookie | `cookie_free` is for one you never added |

package soup

import glib "glib:glib"
import gio "glib:gio"
import gobj "glib:gobject"

// One typed pin per post-generation rule (docs/PATCHED.md). A regeneration that drops or
// changes a rewritten declaration fails to compile here.

@(private)
patched_method_get: cstring = METHOD_GET

@(private)
patched_cookie_max_age_one_year: i32 = COOKIE_MAX_AGE_ONE_YEAR

@(private)
patched_http_uri_flags: glib.UriFlags = HTTP_URI_FLAGS

@(private)
patched_type_message: proc "c" () -> gobj.Type = TYPE_MESSAGE

@(private)
patched_session_error: proc "c" () -> glib.Quark = SESSION_ERROR

// Flag types are bit_sets of the C size, so they pass by value and sit in structs unchanged.
#assert(size_of(MessageFlags) == 4)
#assert(size_of(ServerListenOptions) == 4)
#assert(size_of(Expectation) == 4)
#assert(size_of(Cacheability) == 4)

// One pin per `[^]T` parameter corrected to `^T` (docs/PATCHED.md, `single_params`): the C header
// passes one `T *`, not the array runic writes for a name ending in "s".

@(private = "file")
patched_content_sniffer_sniff: proc "c" (_: ^ContentSniffer, _: ^Message, _: ^glib.Bytes, _: ^^glib.HashTable) -> cstring = content_sniffer_sniff

@(private = "file")
patched_cookie_jar_get_cookie_list_with_same_site_info: proc "c" (_: ^CookieJar, _: ^glib.Uri, _: ^glib.Uri, _: ^glib.Uri, _: glib.boolean, _: glib.boolean, _: glib.boolean) -> ^glib.SList = cookie_jar_get_cookie_list_with_same_site_info

@(private = "file")
patched_cookie_set_expires: proc "c" (_: ^Cookie, _: ^glib.DateTime) = cookie_set_expires

@(private = "file")
patched_cookies_free: proc "c" (_: ^glib.SList) = cookies_free

@(private = "file")
patched_headers_parse_request: proc "c" (_: cstring, _: i32, _: ^MessageHeaders, _: ^cstring, _: ^cstring, _: ^HTTPVersion) -> glib.uint_ = headers_parse_request

@(private = "file")
patched_headers_parse_response: proc "c" (_: cstring, _: i32, _: ^MessageHeaders, _: ^HTTPVersion, _: ^glib.uint_, _: ^cstring) -> glib.boolean = headers_parse_response

@(private = "file")
patched_message_headers_append: proc "c" (_: ^MessageHeaders, _: cstring, _: cstring) = message_headers_append

@(private = "file")
patched_message_headers_set_content_disposition: proc "c" (_: ^MessageHeaders, _: cstring, _: ^glib.HashTable) = message_headers_set_content_disposition

@(private = "file")
patched_message_metrics_copy: proc "c" (_: ^MessageMetrics) -> ^MessageMetrics = message_metrics_copy

@(private = "file")
patched_message_set_request_body_from_bytes: proc "c" (_: ^Message, _: cstring, _: ^glib.Bytes) = message_set_request_body_from_bytes

@(private = "file")
patched_multipart_get_part: proc "c" (_: ^Multipart, _: i32, _: ^^MessageHeaders, _: ^^glib.Bytes) -> glib.boolean = multipart_get_part

@(private = "file")
patched_multipart_to_message: proc "c" (_: ^Multipart, _: ^MessageHeaders, _: ^^glib.Bytes) = multipart_to_message

@(private = "file")
patched_server_listen: proc "c" (_: ^Server, _: ^gio.SocketAddress, _: ServerListenOptions, _: ^^glib.Error) -> glib.boolean = server_listen

@(private = "file")
patched_websocket_client_prepare_handshake: proc "c" (_: ^Message, _: cstring, _: [^]cstring, _: ^glib.PtrArray) = websocket_client_prepare_handshake

@(private = "file")
patched_websocket_client_verify_handshake: proc "c" (_: ^Message, _: ^glib.PtrArray, _: ^^glib.List, _: ^^glib.Error) -> glib.boolean = websocket_client_verify_handshake

@(private = "file")
patched_websocket_connection_new: proc "c" (_: ^gio.IOStream, _: ^glib.Uri, _: WebsocketConnectionType, _: cstring, _: cstring, _: ^glib.List) -> ^WebsocketConnection = websocket_connection_new

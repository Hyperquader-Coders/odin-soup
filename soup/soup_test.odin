#+test
package soup

import "core:strings"
import "core:testing"
import glib "glib:glib"
import gobj "glib:gobject"

// Version recorded in README.md: "**Bound version:** X.Y.Z".
README :: #load("../README.md", string)

bound_version :: proc() -> (major, minor, micro: u32, ok: bool) {
    marker :: "**Bound version:** "
    readme := README
    i := strings.index(readme, marker)
    if i < 0 do return
    rest := readme[i + len(marker):]
    end := strings.index_any(rest, " \n")
    if end < 0 do return
    parts := strings.split(rest[:end], ".", context.temp_allocator)
    if len(parts) != 3 do return
    nums: [3]u32
    for p, n in parts {
        v: u32
        if len(p) == 0 do return
        for c in p {
            if c < '0' || c > '9' do return
            v = v * 10 + u32(c - '0')
        }
        nums[n] = v
    }
    return nums[0], nums[1], nums[2], true
}

@(test)
test_readme_version_matches_header_macros :: proc(t: ^testing.T) {
    major, minor, micro, ok := bound_version()
    testing.expect(t, ok, "README.md has no '**Bound version:** X.Y.Z'")
    testing.expect_value(t, major, u32(MAJOR_VERSION))
    testing.expect_value(t, minor, u32(MINOR_VERSION))
    testing.expect_value(t, micro, u32(MICRO_VERSION))
}

@(test)
test_loaded_library_is_not_older_than_the_headers :: proc(t: ^testing.T) {
    testing.expect_value(t, get_major_version(), u32(MAJOR_VERSION))
    testing.expect(t, get_minor_version() >= u32(MINOR_VERSION), "libsoup is older than the bound headers")
    testing.expect(
        t,
        bool(check_version(MAJOR_VERSION, MINOR_VERSION, MICRO_VERSION)),
        "check_version rejects the bound version",
    )
}

@(test)
test_status_and_method_strings :: proc(t: ^testing.T) {
    testing.expect_value(t, string(status_get_phrase(200)), "OK")
    testing.expect_value(t, string(status_get_phrase(404)), "Not Found")
    testing.expect_value(t, string(METHOD_POST), "POST")
}

@(test)
test_message_round_trip :: proc(t: ^testing.T) {
    uri := glib.uri_parse("http://localhost/a?b=c", {}, nil)
    testing.expect(t, uri != nil)
    defer glib.uri_unref(uri)
    msg := message_new_from_uri(METHOD_GET, uri)
    defer gobj.object_unref(msg)
    testing.expect_value(t, string(message_get_method(msg)), "GET")
    hdrs := message_get_request_headers(msg)
    message_headers_append(hdrs, "X-Amber", "soup")
    testing.expect_value(t, string(message_headers_get_one(hdrs, "X-Amber")), "soup")
}

// `params` is a `GHashTable **` out-parameter: one pointer, ^^glib.HashTable.
@(test)
test_content_type_params_come_back_through_one_pointer :: proc(t: ^testing.T) {
    hdrs := message_headers_new(.MESSAGE_HEADERS_REQUEST)
    defer message_headers_unref(hdrs)
    message_headers_append(hdrs, "Content-Type", "text/plain; charset=utf-8")
    params: ^glib.HashTable
    ct := message_headers_get_content_type(hdrs, &params)
    testing.expect_value(t, string(ct), "text/plain")
    testing.expect(t, params != nil)
    defer glib.hash_table_unref(params)
    testing.expect_value(t, string(cstring(glib.hash_table_lookup(params, rawptr(raw_data(string("charset\x00")))))), "utf-8")
}

@(test)
test_cookie_parse :: proc(t: ^testing.T) {
    c := cookie_new("name", "value", "example.org", "/", COOKIE_MAX_AGE_ONE_HOUR)
    defer cookie_free(c)
    testing.expect_value(t, string(cookie_get_name(c)), "name")
    testing.expect_value(t, string(cookie_get_value(c)), "value")
}

@(test)
test_session_and_server_are_objects :: proc(t: ^testing.T) {
    session := session_new()
    defer gobj.object_unref(session)
    server := server_new(nil)
    defer gobj.object_unref(server)
    testing.expect(t, session != nil && server != nil)
}

@(test)
test_flag_sets_keep_the_c_layout :: proc(t: ^testing.T) {
    testing.expect_value(t, transmute(u32)MessageFlags{.MESSAGE_NO_REDIRECT, .MESSAGE_IDEMPOTENT}, 10)
    testing.expect_value(t, transmute(u32)ServerListenOptions{.SERVER_LISTEN_IPV6_ONLY}, 4)
    testing.expect_value(t, transmute(u32)Expectation{.CONTINUE}, 2)
    testing.expect_value(t, transmute(u32)Cacheability{.CACHE_VALIDATES}, 8)
    testing.expect_value(t, transmute(u32)HTTP_URI_FLAGS, 2 | 64 | 32 | 128 | 256)
}

@(test)
test_message_flags_pass_by_value :: proc(t: ^testing.T) {
    msg := message_new("GET", "http://localhost/")
    defer gobj.object_unref(msg)
    message_set_flags(msg, {.MESSAGE_NO_REDIRECT})
    message_add_flags(msg, {.MESSAGE_IDEMPOTENT})
    testing.expect_value(t, message_get_flags(msg), MessageFlags{.MESSAGE_NO_REDIRECT, .MESSAGE_IDEMPOTENT})
    testing.expect(t, bool(message_query_flags(msg, {.MESSAGE_IDEMPOTENT})))
    message_remove_flags(msg, {.MESSAGE_NO_REDIRECT})
    testing.expect_value(t, message_get_flags(msg), MessageFlags{.MESSAGE_IDEMPOTENT})
}

@(test)
test_expectations_round_trip :: proc(t: ^testing.T) {
    msg := message_new("GET", "http://localhost/")
    defer gobj.object_unref(msg)
    hdrs := message_get_request_headers(msg)
    message_headers_set_expectations(hdrs, {.CONTINUE})
    testing.expect_value(t, message_headers_get_expectations(hdrs), Expectation{.CONTINUE})
}

@(test)
test_server_listen_takes_listen_options :: proc(t: ^testing.T) {
    server := server_new(nil)
    defer gobj.object_unref(server)
    err: ^glib.Error
    ok := server_listen_local(server, 0, {.SERVER_LISTEN_IPV4_ONLY}, &err)
    if err != nil do glib.error_free(err)
    testing.expect(t, bool(ok))
    server_disconnect(server)
}

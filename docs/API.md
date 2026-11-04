# odin-soup API

Every public declaration of every package, generated from the source by `make api`; do not
edit. The short form is the [cheat sheet](CHEATSHEET.md); the rules of the bindings are in the
[README](../README.md) and [PATCHED.md](PATCHED.md).

## soup:soup

```text
package soup
	constants
		COOKIE_MAX_AGE_ONE_DAY :: (60 * 60) * 24
		COOKIE_MAX_AGE_ONE_HOUR :: 60 * 60
		COOKIE_MAX_AGE_ONE_WEEK :: ((60 * 60) * 24) * 7
		COOKIE_MAX_AGE_ONE_YEAR :: 31556926
		FORM_MIME_TYPE_MULTIPART :: "multipart/form-data"
		FORM_MIME_TYPE_URLENCODED :: "application/x-www-form-urlencoded"
		HSTS_POLICY_MAX_AGE_PAST :: 0
		HTTP_URI_FLAGS :: glib.UriFlags{.HAS_PASSWORD, .ENCODED_PATH, .ENCODED_QUERY, .ENCODED_FRAGMENT, .SCHEME_NORMALIZE}
		MAJOR_VERSION :: 3
		METHOD_CONNECT :: "CONNECT"
		METHOD_COPY :: "COPY"
		METHOD_DELETE :: "DELETE"
		METHOD_GET :: "GET"
		METHOD_HEAD :: "HEAD"
		METHOD_LOCK :: "LOCK"
		METHOD_MKCOL :: "MKCOL"
		METHOD_MOVE :: "MOVE"
		METHOD_OPTIONS :: "OPTIONS"
		METHOD_POST :: "POST"
		METHOD_PROPFIND :: "PROPFIND"
		METHOD_PROPPATCH :: "PROPPATCH"
		METHOD_PUT :: "PUT"
		METHOD_TRACE :: "TRACE"
		METHOD_UNLOCK :: "UNLOCK"
		MICRO_VERSION :: 4
		MINOR_VERSION :: 4
		VERSION_3_0 :: (3) << 16 | (0) << 8
		VERSION_3_2 :: (3) << 16 | (2) << 8
		VERSION_3_4 :: (3) << 16 | (4) << 8
		VERSION_CUR_STABLE :: ((3)) << 16 | ((4)) << 8
		VERSION_MAX_ALLOWED :: ((3)) << 16 | ((4)) << 8
		VERSION_MIN_REQUIRED :: ((3)) << 16 | ((4)) << 8
		VERSION_PREV_STABLE :: ((3)) << 16 | ((4) - 2) << 8
		__SOUP_FORM_H__ :: 1
		__SOUP_HEADERS_H__ :: 1
		__SOUP_H__ :: 1
		__SOUP_SERVER_MESSAGE_H__ :: 1
		__SOUP_TYPES_H__ :: 1

	variables
		_SOUP_METHOD_CONNECT: glib.pointer
		_SOUP_METHOD_COPY: glib.pointer
		_SOUP_METHOD_DELETE: glib.pointer
		_SOUP_METHOD_GET: glib.pointer
		_SOUP_METHOD_HEAD: glib.pointer
		_SOUP_METHOD_LOCK: glib.pointer
		_SOUP_METHOD_MKCOL: glib.pointer
		_SOUP_METHOD_MOVE: glib.pointer
		_SOUP_METHOD_OPTIONS: glib.pointer
		_SOUP_METHOD_POST: glib.pointer
		_SOUP_METHOD_PROPFIND: glib.pointer
		_SOUP_METHOD_PROPPATCH: glib.pointer
		_SOUP_METHOD_PUT: glib.pointer
		_SOUP_METHOD_TRACE: glib.pointer
		_SOUP_METHOD_UNLOCK: glib.pointer

	procedures
		auth_authenticate :: proc(auth: ^Auth, username: cstring, password: cstring) ---
		auth_basic_get_type :: proc() -> gobj.Type ---
		auth_can_authenticate :: proc(auth: ^Auth) -> glib.boolean ---
		auth_cancel :: proc(auth: ^Auth) ---
		auth_digest_get_type :: proc() -> gobj.Type ---
		auth_domain_accepts :: proc(domain: ^AuthDomain, msg: ^ServerMessage) -> cstring ---
		auth_domain_add_path :: proc(domain: ^AuthDomain, path: cstring) ---
		auth_domain_basic_get_type :: proc() -> gobj.Type ---
		auth_domain_basic_new :: proc(optname1: cstring, #c_vararg var_args: ..any) -> ^AuthDomain ---
		auth_domain_basic_set_auth_callback :: proc(domain: ^AuthDomain, callback: AuthDomainBasicAuthCallback, user_data: glib.pointer, dnotify: glib.DestroyNotify) ---
		auth_domain_challenge :: proc(domain: ^AuthDomain, msg: ^ServerMessage) ---
		auth_domain_check_password :: proc(domain: ^AuthDomain, msg: ^ServerMessage, username: cstring, password: cstring) -> glib.boolean ---
		auth_domain_covers :: proc(domain: ^AuthDomain, msg: ^ServerMessage) -> glib.boolean ---
		auth_domain_digest_encode_password :: proc(username: cstring, realm: cstring, password: cstring) -> cstring ---
		auth_domain_digest_get_type :: proc() -> gobj.Type ---
		auth_domain_digest_new :: proc(optname1: cstring, #c_vararg var_args: ..any) -> ^AuthDomain ---
		auth_domain_digest_set_auth_callback :: proc(domain: ^AuthDomain, callback: AuthDomainDigestAuthCallback, user_data: glib.pointer, dnotify: glib.DestroyNotify) ---
		auth_domain_get_realm :: proc(domain: ^AuthDomain) -> cstring ---
		auth_domain_get_type :: proc() -> gobj.Type ---
		auth_domain_remove_path :: proc(domain: ^AuthDomain, path: cstring) ---
		auth_domain_set_filter :: proc(domain: ^AuthDomain, filter: AuthDomainFilter, filter_data: glib.pointer, dnotify: glib.DestroyNotify) ---
		auth_domain_set_generic_auth_callback :: proc(domain: ^AuthDomain, auth_callback: AuthDomainGenericAuthCallback, auth_data: glib.pointer, dnotify: glib.DestroyNotify) ---
		auth_free_protection_space :: proc(auth: ^Auth, space: ^glib.SList) ---
		auth_get_authority :: proc(auth: ^Auth) -> cstring ---
		auth_get_authorization :: proc(auth: ^Auth, msg: ^Message) -> cstring ---
		auth_get_info :: proc(auth: ^Auth) -> cstring ---
		auth_get_protection_space :: proc(auth: ^Auth, source_uri: ^glib.Uri) -> ^glib.SList ---
		auth_get_realm :: proc(auth: ^Auth) -> cstring ---
		auth_get_scheme_name :: proc(auth: ^Auth) -> cstring ---
		auth_get_type :: proc() -> gobj.Type ---
		auth_is_authenticated :: proc(auth: ^Auth) -> glib.boolean ---
		auth_is_cancelled :: proc(auth: ^Auth) -> glib.boolean ---
		auth_is_for_proxy :: proc(auth: ^Auth) -> glib.boolean ---
		auth_is_ready :: proc(auth: ^Auth, msg: ^Message) -> glib.boolean ---
		auth_manager_clear_cached_credentials :: proc(manager: ^AuthManager) ---
		auth_manager_get_type :: proc() -> gobj.Type ---
		auth_manager_use_auth :: proc(manager: ^AuthManager, uri: ^glib.Uri, auth: ^Auth) ---
		auth_negotiate_get_type :: proc() -> gobj.Type ---
		auth_negotiate_supported :: proc() -> glib.boolean ---
		auth_new :: proc(type: gobj.Type, msg: ^Message, auth_header: cstring) -> ^Auth ---
		auth_ntlm_get_type :: proc() -> gobj.Type ---
		auth_update :: proc(auth: ^Auth, msg: ^Message, auth_header: cstring) -> glib.boolean ---
		cache_clear :: proc(cache: ^Cache) ---
		cache_dump :: proc(cache: ^Cache) ---
		cache_flush :: proc(cache: ^Cache) ---
		cache_get_max_size :: proc(cache: ^Cache) -> glib.uint_ ---
		cache_get_type :: proc() -> gobj.Type ---
		cache_load :: proc(cache: ^Cache) ---
		cache_new :: proc(cache_dir: cstring, cache_type: CacheType) -> ^Cache ---
		cache_set_max_size :: proc(cache: ^Cache, max_size: glib.uint_) ---
		cache_type_get_type :: proc() -> gobj.Type ---
		cacheability_get_type :: proc() -> gobj.Type ---
		check_version :: proc(major: glib.uint_, minor: glib.uint_, micro: glib.uint_) -> glib.boolean ---
		content_decoder_get_type :: proc() -> gobj.Type ---
		content_sniffer_get_type :: proc() -> gobj.Type ---
		content_sniffer_new :: proc() -> ^ContentSniffer ---
		content_sniffer_sniff :: proc(sniffer: ^ContentSniffer, msg: ^Message, buffer: ^glib.Bytes, params: ^^glib.HashTable) -> cstring ---
		cookie_applies_to_uri :: proc(cookie: ^Cookie, uri: ^glib.Uri) -> glib.boolean ---
		cookie_copy :: proc(cookie: ^Cookie) -> ^Cookie ---
		cookie_domain_matches :: proc(cookie: ^Cookie, host: cstring) -> glib.boolean ---
		cookie_equal :: proc(cookie1: ^Cookie, cookie2: ^Cookie) -> glib.boolean ---
		cookie_free :: proc(cookie: ^Cookie) ---
		cookie_get_domain :: proc(cookie: ^Cookie) -> cstring ---
		cookie_get_expires :: proc(cookie: ^Cookie) -> ^glib.DateTime ---
		cookie_get_http_only :: proc(cookie: ^Cookie) -> glib.boolean ---
		cookie_get_name :: proc(cookie: ^Cookie) -> cstring ---
		cookie_get_path :: proc(cookie: ^Cookie) -> cstring ---
		cookie_get_same_site_policy :: proc(cookie: ^Cookie) -> SameSitePolicy ---
		cookie_get_secure :: proc(cookie: ^Cookie) -> glib.boolean ---
		cookie_get_type :: proc() -> gobj.Type ---
		cookie_get_value :: proc(cookie: ^Cookie) -> cstring ---
		cookie_jar_accept_policy_get_type :: proc() -> gobj.Type ---
		cookie_jar_add_cookie :: proc(jar: ^CookieJar, cookie: ^Cookie) ---
		cookie_jar_add_cookie_full :: proc(jar: ^CookieJar, cookie: ^Cookie, uri: ^glib.Uri, first_party: ^glib.Uri) ---
		cookie_jar_add_cookie_with_first_party :: proc(jar: ^CookieJar, first_party: ^glib.Uri, cookie: ^Cookie) ---
		cookie_jar_all_cookies :: proc(jar: ^CookieJar) -> ^glib.SList ---
		cookie_jar_db_get_type :: proc() -> gobj.Type ---
		cookie_jar_db_new :: proc(filename: cstring, read_only: glib.boolean) -> ^CookieJar ---
		cookie_jar_delete_cookie :: proc(jar: ^CookieJar, cookie: ^Cookie) ---
		cookie_jar_get_accept_policy :: proc(jar: ^CookieJar) -> CookieJarAcceptPolicy ---
		cookie_jar_get_cookie_list :: proc(jar: ^CookieJar, uri: ^glib.Uri, for_http: glib.boolean) -> ^glib.SList ---
		cookie_jar_get_cookie_list_with_same_site_info :: proc(jar: ^CookieJar, uri: ^glib.Uri, top_level: ^glib.Uri, site_for_cookies: ^glib.Uri, for_http: glib.boolean, is_safe_method: glib.boolean, is_top_level_navigation: glib.boolean) -> ^glib.SList ---
		cookie_jar_get_cookies :: proc(jar: ^CookieJar, uri: ^glib.Uri, for_http: glib.boolean) -> cstring ---
		cookie_jar_get_type :: proc() -> gobj.Type ---
		cookie_jar_is_persistent :: proc(jar: ^CookieJar) -> glib.boolean ---
		cookie_jar_new :: proc() -> ^CookieJar ---
		cookie_jar_set_accept_policy :: proc(jar: ^CookieJar, policy: CookieJarAcceptPolicy) ---
		cookie_jar_set_cookie :: proc(jar: ^CookieJar, uri: ^glib.Uri, cookie: cstring) ---
		cookie_jar_set_cookie_with_first_party :: proc(jar: ^CookieJar, uri: ^glib.Uri, first_party: ^glib.Uri, cookie: cstring) ---
		cookie_jar_text_get_type :: proc() -> gobj.Type ---
		cookie_jar_text_new :: proc(filename: cstring, read_only: glib.boolean) -> ^CookieJar ---
		cookie_new :: proc(name: cstring, value: cstring, domain: cstring, path: cstring, max_age: i32) -> ^Cookie ---
		cookie_parse :: proc(header: cstring, origin: ^glib.Uri) -> ^Cookie ---
		cookie_set_domain :: proc(cookie: ^Cookie, domain: cstring) ---
		cookie_set_expires :: proc(cookie: ^Cookie, expires: ^glib.DateTime) ---
		cookie_set_http_only :: proc(cookie: ^Cookie, http_only: glib.boolean) ---
		cookie_set_max_age :: proc(cookie: ^Cookie, max_age: i32) ---
		cookie_set_name :: proc(cookie: ^Cookie, name: cstring) ---
		cookie_set_path :: proc(cookie: ^Cookie, path: cstring) ---
		cookie_set_same_site_policy :: proc(cookie: ^Cookie, policy: SameSitePolicy) ---
		cookie_set_secure :: proc(cookie: ^Cookie, secure: glib.boolean) ---
		cookie_set_value :: proc(cookie: ^Cookie, value: cstring) ---
		cookie_to_cookie_header :: proc(cookie: ^Cookie) -> cstring ---
		cookie_to_set_cookie_header :: proc(cookie: ^Cookie) -> cstring ---
		cookies_free :: proc(cookies: ^glib.SList) ---
		cookies_from_request :: proc(msg: ^Message) -> ^glib.SList ---
		cookies_from_response :: proc(msg: ^Message) -> ^glib.SList ---
		cookies_to_cookie_header :: proc(cookies: ^glib.SList) -> cstring ---
		cookies_to_request :: proc(cookies: ^glib.SList, msg: ^Message) ---
		cookies_to_response :: proc(cookies: ^glib.SList, msg: ^Message) ---
		date_format_get_type :: proc() -> gobj.Type ---
		date_time_new_from_http_string :: proc(date_string: cstring) -> ^glib.DateTime ---
		date_time_to_string :: proc(date: ^glib.DateTime, format: DateFormat) -> cstring ---
		encoding_get_type :: proc() -> gobj.Type ---
		expectation_get_type :: proc() -> gobj.Type ---
		form_decode :: proc(encoded_form: cstring) -> ^glib.HashTable ---
		form_decode_multipart :: proc(multipart: ^Multipart, file_control_name: cstring, filename: ^cstring, content_type: ^cstring, file: ^^glib.Bytes) -> ^glib.HashTable ---
		form_encode :: proc(first_field: cstring, #c_vararg var_args: ..any) -> cstring ---
		form_encode_datalist :: proc(form_data_set: ^^glib.Data) -> cstring ---
		form_encode_hash :: proc(form_data_set: ^glib.HashTable) -> cstring ---
		get_major_version :: proc() -> glib.uint_ ---
		get_micro_version :: proc() -> glib.uint_ ---
		get_minor_version :: proc() -> glib.uint_ ---
		header_contains :: proc(header: cstring, token: cstring) -> glib.boolean ---
		header_free_list :: proc(list: ^glib.SList) ---
		header_free_param_list :: proc(param_list: ^glib.HashTable) ---
		header_g_string_append_param :: proc(string_p: ^glib.String, name: cstring, value: cstring) ---
		header_g_string_append_param_quoted :: proc(string_p: ^glib.String, name: cstring, value: cstring) ---
		header_parse_list :: proc(header: cstring) -> ^glib.SList ---
		header_parse_param_list :: proc(header: cstring) -> ^glib.HashTable ---
		header_parse_param_list_strict :: proc(header: cstring) -> ^glib.HashTable ---
		header_parse_quality_list :: proc(header: cstring, unacceptable: ^^glib.SList) -> ^glib.SList ---
		header_parse_semi_param_list :: proc(header: cstring) -> ^glib.HashTable ---
		header_parse_semi_param_list_strict :: proc(header: cstring) -> ^glib.HashTable ---
		headers_parse :: proc(str: cstring, len: i32, dest: ^MessageHeaders) -> glib.boolean ---
		headers_parse_request :: proc(str: cstring, len: i32, req_headers: ^MessageHeaders, req_method: ^cstring, req_path: ^cstring, ver: ^HTTPVersion) -> glib.uint_ ---
		headers_parse_response :: proc(str: cstring, len: i32, headers: ^MessageHeaders, ver: ^HTTPVersion, status_code: ^glib.uint_, reason_phrase: ^cstring) -> glib.boolean ---
		headers_parse_status_line :: proc(status_line: cstring, ver: ^HTTPVersion, status_code: ^glib.uint_, reason_phrase: ^cstring) -> glib.boolean ---
		hsts_enforcer_db_get_type :: proc() -> gobj.Type ---
		hsts_enforcer_db_new :: proc(filename: cstring) -> ^HSTSEnforcer ---
		hsts_enforcer_get_domains :: proc(hsts_enforcer: ^HSTSEnforcer, session_policies: glib.boolean) -> ^glib.List ---
		hsts_enforcer_get_policies :: proc(hsts_enforcer: ^HSTSEnforcer, session_policies: glib.boolean) -> ^glib.List ---
		hsts_enforcer_get_type :: proc() -> gobj.Type ---
		hsts_enforcer_has_valid_policy :: proc(hsts_enforcer: ^HSTSEnforcer, domain: cstring) -> glib.boolean ---
		hsts_enforcer_is_persistent :: proc(hsts_enforcer: ^HSTSEnforcer) -> glib.boolean ---
		hsts_enforcer_new :: proc() -> ^HSTSEnforcer ---
		hsts_enforcer_set_policy :: proc(hsts_enforcer: ^HSTSEnforcer, policy: ^HSTSPolicy) ---
		hsts_enforcer_set_session_policy :: proc(hsts_enforcer: ^HSTSEnforcer, domain: cstring, include_subdomains: glib.boolean) ---
		hsts_policy_copy :: proc(policy: ^HSTSPolicy) -> ^HSTSPolicy ---
		hsts_policy_equal :: proc(policy1: ^HSTSPolicy, policy2: ^HSTSPolicy) -> glib.boolean ---
		hsts_policy_free :: proc(policy: ^HSTSPolicy) ---
		hsts_policy_get_domain :: proc(policy: ^HSTSPolicy) -> cstring ---
		hsts_policy_get_expires :: proc(policy: ^HSTSPolicy) -> ^glib.DateTime ---
		hsts_policy_get_max_age :: proc(policy: ^HSTSPolicy) -> glib.ulong ---
		hsts_policy_get_type :: proc() -> gobj.Type ---
		hsts_policy_includes_subdomains :: proc(policy: ^HSTSPolicy) -> glib.boolean ---
		hsts_policy_is_expired :: proc(policy: ^HSTSPolicy) -> glib.boolean ---
		hsts_policy_is_session_policy :: proc(policy: ^HSTSPolicy) -> glib.boolean ---
		hsts_policy_new :: proc(domain: cstring, max_age: u64, include_subdomains: glib.boolean) -> ^HSTSPolicy ---
		hsts_policy_new_from_response :: proc(msg: ^Message) -> ^HSTSPolicy ---
		hsts_policy_new_full :: proc(domain: cstring, max_age: u64, expires: ^glib.DateTime, include_subdomains: glib.boolean) -> ^HSTSPolicy ---
		hsts_policy_new_session_policy :: proc(domain: cstring, include_subdomains: glib.boolean) -> ^HSTSPolicy ---
		http_version_get_type :: proc() -> gobj.Type ---
		logger_get_max_body_size :: proc(logger: ^Logger) -> i32 ---
		logger_get_type :: proc() -> gobj.Type ---
		logger_log_level_get_type :: proc() -> gobj.Type ---
		logger_new :: proc(level: LoggerLogLevel) -> ^Logger ---
		logger_set_max_body_size :: proc(logger: ^Logger, max_body_size: i32) ---
		logger_set_printer :: proc(logger: ^Logger, printer: LoggerPrinter, printer_data: glib.pointer, destroy: glib.DestroyNotify) ---
		logger_set_request_filter :: proc(logger: ^Logger, request_filter: LoggerFilter, filter_data: glib.pointer, destroy: glib.DestroyNotify) ---
		logger_set_response_filter :: proc(logger: ^Logger, response_filter: LoggerFilter, filter_data: glib.pointer, destroy: glib.DestroyNotify) ---
		memory_use_get_type :: proc() -> gobj.Type ---
		message_add_flags :: proc(msg: ^Message, flags: MessageFlags) ---
		message_add_header_handler :: proc(msg: ^Message, signal: cstring, header: cstring, callback: gobj.Callback, user_data: glib.pointer) -> glib.uint_ ---
		message_add_status_code_handler :: proc(msg: ^Message, signal: cstring, status_code: glib.uint_, callback: gobj.Callback, user_data: glib.pointer) -> glib.uint_ ---
		message_body_append :: proc(body: ^MessageBody, use: MemoryUse, data: glib.constpointer, length: glib.size) ---
		message_body_append_bytes :: proc(body: ^MessageBody, buffer: ^glib.Bytes) ---
		message_body_append_take :: proc(body: ^MessageBody, data: ^glib.uchar, length: glib.size) ---
		message_body_complete :: proc(body: ^MessageBody) ---
		message_body_flatten :: proc(body: ^MessageBody) -> ^glib.Bytes ---
		message_body_get_accumulate :: proc(body: ^MessageBody) -> glib.boolean ---
		message_body_get_chunk :: proc(body: ^MessageBody, offset_p: glib.offset) -> ^glib.Bytes ---
		message_body_get_type :: proc() -> gobj.Type ---
		message_body_got_chunk :: proc(body: ^MessageBody, chunk: ^glib.Bytes) ---
		message_body_new :: proc() -> ^MessageBody ---
		message_body_ref :: proc(body: ^MessageBody) -> ^MessageBody ---
		message_body_set_accumulate :: proc(body: ^MessageBody, accumulate: glib.boolean) ---
		message_body_truncate :: proc(body: ^MessageBody) ---
		message_body_unref :: proc(body: ^MessageBody) ---
		message_body_wrote_chunk :: proc(body: ^MessageBody, chunk: ^glib.Bytes) ---
		message_disable_feature :: proc(msg: ^Message, feature_type: gobj.Type) ---
		message_flags_get_type :: proc() -> gobj.Type ---
		message_get_connection_id :: proc(msg: ^Message) -> glib.uint64 ---
		message_get_first_party :: proc(msg: ^Message) -> ^glib.Uri ---
		message_get_flags :: proc(msg: ^Message) -> MessageFlags ---
		message_get_force_http1 :: proc(msg: ^Message) -> glib.boolean ---
		message_get_http_version :: proc(msg: ^Message) -> HTTPVersion ---
		message_get_is_options_ping :: proc(msg: ^Message) -> glib.boolean ---
		message_get_is_top_level_navigation :: proc(msg: ^Message) -> glib.boolean ---
		message_get_method :: proc(msg: ^Message) -> cstring ---
		message_get_metrics :: proc(msg: ^Message) -> ^MessageMetrics ---
		message_get_priority :: proc(msg: ^Message) -> MessagePriority ---
		message_get_reason_phrase :: proc(msg: ^Message) -> cstring ---
		message_get_remote_address :: proc(msg: ^Message) -> ^gio.SocketAddress ---
		message_get_request_headers :: proc(msg: ^Message) -> ^MessageHeaders ---
		message_get_response_headers :: proc(msg: ^Message) -> ^MessageHeaders ---
		message_get_site_for_cookies :: proc(msg: ^Message) -> ^glib.Uri ---
		message_get_status :: proc(msg: ^Message) -> Status ---
		message_get_tls_ciphersuite_name :: proc(msg: ^Message) -> cstring ---
		message_get_tls_peer_certificate :: proc(msg: ^Message) -> ^gio.TlsCertificate ---
		message_get_tls_peer_certificate_errors :: proc(msg: ^Message) -> gio.TlsCertificateFlags ---
		message_get_tls_protocol_version :: proc(msg: ^Message) -> gio.TlsProtocolVersion ---
		message_get_type :: proc() -> gobj.Type ---
		message_get_uri :: proc(msg: ^Message) -> ^glib.Uri ---
		message_headers_append :: proc(hdrs: ^MessageHeaders, name: cstring, value: cstring) ---
		message_headers_clean_connection_headers :: proc(hdrs: ^MessageHeaders) ---
		message_headers_clear :: proc(hdrs: ^MessageHeaders) ---
		message_headers_foreach :: proc(hdrs: ^MessageHeaders, func: MessageHeadersForeachFunc, user_data: glib.pointer) ---
		message_headers_free_ranges :: proc(hdrs: ^MessageHeaders, ranges: [^]Range) ---
		message_headers_get_content_disposition :: proc(hdrs: ^MessageHeaders, disposition: ^cstring, params: ^^glib.HashTable) -> glib.boolean ---
		message_headers_get_content_length :: proc(hdrs: ^MessageHeaders) -> glib.offset ---
		message_headers_get_content_range :: proc(hdrs: ^MessageHeaders, start: ^glib.offset, end: ^glib.offset, total_length: ^glib.offset) -> glib.boolean ---
		message_headers_get_content_type :: proc(hdrs: ^MessageHeaders, params: ^^glib.HashTable) -> cstring ---
		message_headers_get_encoding :: proc(hdrs: ^MessageHeaders) -> Encoding ---
		message_headers_get_expectations :: proc(hdrs: ^MessageHeaders) -> Expectation ---
		message_headers_get_headers_type :: proc(hdrs: ^MessageHeaders) -> MessageHeadersType ---
		message_headers_get_list :: proc(hdrs: ^MessageHeaders, name: cstring) -> cstring ---
		message_headers_get_one :: proc(hdrs: ^MessageHeaders, name: cstring) -> cstring ---
		message_headers_get_ranges :: proc(hdrs: ^MessageHeaders, total_length: glib.offset, ranges: [^]^Range, length: ^i32) -> glib.boolean ---
		message_headers_get_type :: proc() -> gobj.Type ---
		message_headers_header_contains :: proc(hdrs: ^MessageHeaders, name: cstring, token: cstring) -> glib.boolean ---
		message_headers_header_equals :: proc(hdrs: ^MessageHeaders, name: cstring, value: cstring) -> glib.boolean ---
		message_headers_iter_init :: proc(iter: ^MessageHeadersIter, hdrs: ^MessageHeaders) ---
		message_headers_iter_next :: proc(iter: ^MessageHeadersIter, name: ^cstring, value: ^cstring) -> glib.boolean ---
		message_headers_new :: proc(type: MessageHeadersType) -> ^MessageHeaders ---
		message_headers_ref :: proc(hdrs: ^MessageHeaders) -> ^MessageHeaders ---
		message_headers_remove :: proc(hdrs: ^MessageHeaders, name: cstring) ---
		message_headers_replace :: proc(hdrs: ^MessageHeaders, name: cstring, value: cstring) ---
		message_headers_set_content_disposition :: proc(hdrs: ^MessageHeaders, disposition: cstring, params: ^glib.HashTable) ---
		message_headers_set_content_length :: proc(hdrs: ^MessageHeaders, content_length: glib.offset) ---
		message_headers_set_content_range :: proc(hdrs: ^MessageHeaders, start: glib.offset, end: glib.offset, total_length: glib.offset) ---
		message_headers_set_content_type :: proc(hdrs: ^MessageHeaders, content_type: cstring, params: ^glib.HashTable) ---
		message_headers_set_encoding :: proc(hdrs: ^MessageHeaders, encoding: Encoding) ---
		message_headers_set_expectations :: proc(hdrs: ^MessageHeaders, expectations: Expectation) ---
		message_headers_set_range :: proc(hdrs: ^MessageHeaders, start: glib.offset, end: glib.offset) ---
		message_headers_set_ranges :: proc(hdrs: ^MessageHeaders, ranges: [^]Range, length: i32) ---
		message_headers_type_get_type :: proc() -> gobj.Type ---
		message_headers_unref :: proc(hdrs: ^MessageHeaders) ---
		message_is_feature_disabled :: proc(msg: ^Message, feature_type: gobj.Type) -> glib.boolean ---
		message_is_keepalive :: proc(msg: ^Message) -> glib.boolean ---
		message_metrics_copy :: proc(metrics: ^MessageMetrics) -> ^MessageMetrics ---
		message_metrics_free :: proc(metrics: ^MessageMetrics) ---
		message_metrics_get_connect_end :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---
		message_metrics_get_connect_start :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---
		message_metrics_get_dns_end :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---
		message_metrics_get_dns_start :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---
		message_metrics_get_fetch_start :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---
		message_metrics_get_request_body_bytes_sent :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---
		message_metrics_get_request_body_size :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---
		message_metrics_get_request_header_bytes_sent :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---
		message_metrics_get_request_start :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---
		message_metrics_get_response_body_bytes_received :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---
		message_metrics_get_response_body_size :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---
		message_metrics_get_response_end :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---
		message_metrics_get_response_header_bytes_received :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---
		message_metrics_get_response_start :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---
		message_metrics_get_tls_start :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---
		message_metrics_get_type :: proc() -> gobj.Type ---
		message_new :: proc(method: cstring, uri_string: cstring) -> ^Message ---
		message_new_from_encoded_form :: proc(method: cstring, uri_string: cstring, encoded_form: cstring) -> ^Message ---
		message_new_from_multipart :: proc(uri_string: cstring, multipart: ^Multipart) -> ^Message ---
		message_new_from_uri :: proc(method: cstring, uri: ^glib.Uri) -> ^Message ---
		message_new_options_ping :: proc(base_uri: ^glib.Uri) -> ^Message ---
		message_priority_get_type :: proc() -> gobj.Type ---
		message_query_flags :: proc(msg: ^Message, flags: MessageFlags) -> glib.boolean ---
		message_remove_flags :: proc(msg: ^Message, flags: MessageFlags) ---
		message_set_first_party :: proc(msg: ^Message, first_party: ^glib.Uri) ---
		message_set_flags :: proc(msg: ^Message, flags: MessageFlags) ---
		message_set_force_http1 :: proc(msg: ^Message, value: glib.boolean) ---
		message_set_is_options_ping :: proc(msg: ^Message, is_options_ping: glib.boolean) ---
		message_set_is_top_level_navigation :: proc(msg: ^Message, is_top_level_navigation: glib.boolean) ---
		message_set_method :: proc(msg: ^Message, method: cstring) ---
		message_set_priority :: proc(msg: ^Message, priority: MessagePriority) ---
		message_set_request_body :: proc(msg: ^Message, content_type: cstring, stream: ^gio.InputStream, content_length: glib.ssize) ---
		message_set_request_body_from_bytes :: proc(msg: ^Message, content_type: cstring, bytes: ^glib.Bytes) ---
		message_set_site_for_cookies :: proc(msg: ^Message, site_for_cookies: ^glib.Uri) ---
		message_set_tls_client_certificate :: proc(msg: ^Message, certificate: ^gio.TlsCertificate) ---
		message_set_uri :: proc(msg: ^Message, uri: ^glib.Uri) ---
		message_tls_client_certificate_password_request_complete :: proc(msg: ^Message) ---
		multipart_append_form_file :: proc(multipart: ^Multipart, control_name: cstring, filename: cstring, content_type: cstring, body: ^glib.Bytes) ---
		multipart_append_form_string :: proc(multipart: ^Multipart, control_name: cstring, data: cstring) ---
		multipart_append_part :: proc(multipart: ^Multipart, headers: ^MessageHeaders, body: ^glib.Bytes) ---
		multipart_free :: proc(multipart: ^Multipart) ---
		multipart_get_length :: proc(multipart: ^Multipart) -> i32 ---
		multipart_get_part :: proc(multipart: ^Multipart, part: i32, headers: ^^MessageHeaders, body: ^^glib.Bytes) -> glib.boolean ---
		multipart_get_type :: proc() -> gobj.Type ---
		multipart_input_stream_get_headers :: proc(multipart: ^MultipartInputStream) -> ^MessageHeaders ---
		multipart_input_stream_get_type :: proc() -> gobj.Type ---
		multipart_input_stream_new :: proc(msg: ^Message, base_stream: ^gio.InputStream) -> ^MultipartInputStream ---
		multipart_input_stream_next_part :: proc(multipart: ^MultipartInputStream, cancellable: ^gio.Cancellable, error: ^^glib.Error) -> ^gio.InputStream ---
		multipart_input_stream_next_part_async :: proc(multipart: ^MultipartInputStream, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, data: glib.pointer) ---
		multipart_input_stream_next_part_finish :: proc(multipart: ^MultipartInputStream, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gio.InputStream ---
		multipart_new :: proc(mime_type: cstring) -> ^Multipart ---
		multipart_new_from_message :: proc(headers: ^MessageHeaders, body: ^glib.Bytes) -> ^Multipart ---
		multipart_to_message :: proc(multipart: ^Multipart, dest_headers: ^MessageHeaders, dest_body: ^^glib.Bytes) ---
		same_site_policy_get_type :: proc() -> gobj.Type ---
		server_accept_iostream :: proc(server: ^Server, stream: ^gio.IOStream, local_addr: ^gio.SocketAddress, remote_addr: ^gio.SocketAddress, error: ^^glib.Error) -> glib.boolean ---
		server_add_auth_domain :: proc(server: ^Server, auth_domain: ^AuthDomain) ---
		server_add_early_handler :: proc(server: ^Server, path: cstring, callback: ServerCallback, user_data: glib.pointer, destroy: glib.DestroyNotify) ---
		server_add_handler :: proc(server: ^Server, path: cstring, callback: ServerCallback, user_data: glib.pointer, destroy: glib.DestroyNotify) ---
		server_add_websocket_extension :: proc(server: ^Server, extension_type: gobj.Type) ---
		server_add_websocket_handler :: proc(server: ^Server, path: cstring, origin: cstring, protocols: [^]cstring, callback: ServerWebsocketCallback, user_data: glib.pointer, destroy: glib.DestroyNotify) ---
		server_disconnect :: proc(server: ^Server) ---
		server_get_listeners :: proc(server: ^Server) -> ^glib.SList ---
		server_get_tls_auth_mode :: proc(server: ^Server) -> gio.TlsAuthenticationMode ---
		server_get_tls_certificate :: proc(server: ^Server) -> ^gio.TlsCertificate ---
		server_get_tls_database :: proc(server: ^Server) -> ^gio.TlsDatabase ---
		server_get_type :: proc() -> gobj.Type ---
		server_get_uris :: proc(server: ^Server) -> ^glib.SList ---
		server_is_https :: proc(server: ^Server) -> glib.boolean ---
		server_listen :: proc(server: ^Server, address: ^gio.SocketAddress, options: ServerListenOptions, error: ^^glib.Error) -> glib.boolean ---
		server_listen_all :: proc(server: ^Server, port: glib.uint_, options: ServerListenOptions, error: ^^glib.Error) -> glib.boolean ---
		server_listen_local :: proc(server: ^Server, port: glib.uint_, options: ServerListenOptions, error: ^^glib.Error) -> glib.boolean ---
		server_listen_options_get_type :: proc() -> gobj.Type ---
		server_listen_socket :: proc(server: ^Server, socket: ^gio.Socket, options: ServerListenOptions, error: ^^glib.Error) -> glib.boolean ---
		server_message_get_http_version :: proc(msg: ^ServerMessage) -> HTTPVersion ---
		server_message_get_local_address :: proc(msg: ^ServerMessage) -> ^gio.SocketAddress ---
		server_message_get_method :: proc(msg: ^ServerMessage) -> cstring ---
		server_message_get_reason_phrase :: proc(msg: ^ServerMessage) -> cstring ---
		server_message_get_remote_address :: proc(msg: ^ServerMessage) -> ^gio.SocketAddress ---
		server_message_get_remote_host :: proc(msg: ^ServerMessage) -> cstring ---
		server_message_get_request_body :: proc(msg: ^ServerMessage) -> ^MessageBody ---
		server_message_get_request_headers :: proc(msg: ^ServerMessage) -> ^MessageHeaders ---
		server_message_get_response_body :: proc(msg: ^ServerMessage) -> ^MessageBody ---
		server_message_get_response_headers :: proc(msg: ^ServerMessage) -> ^MessageHeaders ---
		server_message_get_socket :: proc(msg: ^ServerMessage) -> ^gio.Socket ---
		server_message_get_status :: proc(msg: ^ServerMessage) -> glib.uint_ ---
		server_message_get_tls_peer_certificate :: proc(msg: ^ServerMessage) -> ^gio.TlsCertificate ---
		server_message_get_tls_peer_certificate_errors :: proc(msg: ^ServerMessage) -> gio.TlsCertificateFlags ---
		server_message_get_type :: proc() -> gobj.Type ---
		server_message_get_uri :: proc(msg: ^ServerMessage) -> ^glib.Uri ---
		server_message_is_options_ping :: proc(msg: ^ServerMessage) -> glib.boolean ---
		server_message_pause :: proc(msg: ^ServerMessage) ---
		server_message_set_http_version :: proc(msg: ^ServerMessage, version: HTTPVersion) ---
		server_message_set_redirect :: proc(msg: ^ServerMessage, status_code: glib.uint_, redirect_uri: cstring) ---
		server_message_set_response :: proc(msg: ^ServerMessage, content_type: cstring, resp_use: MemoryUse, resp_body: cstring, resp_length: glib.size) ---
		server_message_set_status :: proc(msg: ^ServerMessage, status_code: glib.uint_, reason_phrase: cstring) ---
		server_message_steal_connection :: proc(msg: ^ServerMessage) -> ^gio.IOStream ---
		server_message_unpause :: proc(msg: ^ServerMessage) ---
		server_new :: proc(optname1: cstring, #c_vararg var_args: ..any) -> ^Server ---
		server_pause_message :: proc(server: ^Server, msg: ^ServerMessage) ---
		server_remove_auth_domain :: proc(server: ^Server, auth_domain: ^AuthDomain) ---
		server_remove_handler :: proc(server: ^Server, path: cstring) ---
		server_remove_websocket_extension :: proc(server: ^Server, extension_type: gobj.Type) ---
		server_set_tls_auth_mode :: proc(server: ^Server, mode: gio.TlsAuthenticationMode) ---
		server_set_tls_certificate :: proc(server: ^Server, certificate: ^gio.TlsCertificate) ---
		server_set_tls_database :: proc(server: ^Server, tls_database: ^gio.TlsDatabase) ---
		server_unpause_message :: proc(server: ^Server, msg: ^ServerMessage) ---
		session_abort :: proc(session: ^Session) ---
		session_add_feature :: proc(session: ^Session, feature: ^SessionFeature) ---
		session_add_feature_by_type :: proc(session: ^Session, feature_type: gobj.Type) ---
		session_error_get_type :: proc() -> gobj.Type ---
		session_error_quark :: proc() -> glib.Quark ---
		session_feature_get_type :: proc() -> gobj.Type ---
		session_get_accept_language :: proc(session: ^Session) -> cstring ---
		session_get_accept_language_auto :: proc(session: ^Session) -> glib.boolean ---
		session_get_async_result_message :: proc(session: ^Session, result: ^gio.AsyncResult) -> ^Message ---
		session_get_feature :: proc(session: ^Session, feature_type: gobj.Type) -> ^SessionFeature ---
		session_get_feature_for_message :: proc(session: ^Session, feature_type: gobj.Type, msg: ^Message) -> ^SessionFeature ---
		session_get_idle_timeout :: proc(session: ^Session) -> glib.uint_ ---
		session_get_local_address :: proc(session: ^Session) -> ^gio.InetSocketAddress ---
		session_get_max_conns :: proc(session: ^Session) -> glib.uint_ ---
		session_get_max_conns_per_host :: proc(session: ^Session) -> glib.uint_ ---
		session_get_proxy_resolver :: proc(session: ^Session) -> ^gio.ProxyResolver ---
		session_get_remote_connectable :: proc(session: ^Session) -> ^gio.SocketConnectable ---
		session_get_timeout :: proc(session: ^Session) -> glib.uint_ ---
		session_get_tls_database :: proc(session: ^Session) -> ^gio.TlsDatabase ---
		session_get_tls_interaction :: proc(session: ^Session) -> ^gio.TlsInteraction ---
		session_get_type :: proc() -> gobj.Type ---
		session_get_user_agent :: proc(session: ^Session) -> cstring ---
		session_has_feature :: proc(session: ^Session, feature_type: gobj.Type) -> glib.boolean ---
		session_new :: proc() -> ^Session ---
		session_new_with_options :: proc(optname1: cstring, #c_vararg var_args: ..any) -> ^Session ---
		session_preconnect_async :: proc(session: ^Session, msg: ^Message, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		session_preconnect_finish :: proc(session: ^Session, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---
		session_remove_feature :: proc(session: ^Session, feature: ^SessionFeature) ---
		session_remove_feature_by_type :: proc(session: ^Session, feature_type: gobj.Type) ---
		session_send :: proc(session: ^Session, msg: ^Message, cancellable: ^gio.Cancellable, error: ^^glib.Error) -> ^gio.InputStream ---
		session_send_and_read :: proc(session: ^Session, msg: ^Message, cancellable: ^gio.Cancellable, error: ^^glib.Error) -> ^glib.Bytes ---
		session_send_and_read_async :: proc(session: ^Session, msg: ^Message, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		session_send_and_read_finish :: proc(session: ^Session, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^glib.Bytes ---
		session_send_and_splice :: proc(session: ^Session, msg: ^Message, out_stream: ^gio.OutputStream, flags: gio.OutputStreamSpliceFlags, cancellable: ^gio.Cancellable, error: ^^glib.Error) -> glib.ssize ---
		session_send_and_splice_async :: proc(session: ^Session, msg: ^Message, out_stream: ^gio.OutputStream, flags: gio.OutputStreamSpliceFlags, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		session_send_and_splice_finish :: proc(session: ^Session, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.ssize ---
		session_send_async :: proc(session: ^Session, msg: ^Message, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		session_send_finish :: proc(session: ^Session, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gio.InputStream ---
		session_set_accept_language :: proc(session: ^Session, accept_language: cstring) ---
		session_set_accept_language_auto :: proc(session: ^Session, accept_language_auto: glib.boolean) ---
		session_set_idle_timeout :: proc(session: ^Session, timeout: glib.uint_) ---
		session_set_proxy_resolver :: proc(session: ^Session, proxy_resolver: ^gio.ProxyResolver) ---
		session_set_timeout :: proc(session: ^Session, timeout: glib.uint_) ---
		session_set_tls_database :: proc(session: ^Session, tls_database: ^gio.TlsDatabase) ---
		session_set_tls_interaction :: proc(session: ^Session, tls_interaction: ^gio.TlsInteraction) ---
		session_set_user_agent :: proc(session: ^Session, user_agent: cstring) ---
		session_websocket_connect_async :: proc(session: ^Session, msg: ^Message, origin: cstring, protocols: [^]cstring, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		session_websocket_connect_finish :: proc(session: ^Session, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^WebsocketConnection ---
		status_get_phrase :: proc(status_code: glib.uint_) -> cstring ---
		status_get_type :: proc() -> gobj.Type ---
		tld_domain_is_public_suffix :: proc(domain: cstring) -> glib.boolean ---
		tld_error_get_type :: proc() -> gobj.Type ---
		tld_error_quark :: proc() -> glib.Quark ---
		tld_get_base_domain :: proc(hostname: cstring, error: ^^glib.Error) -> cstring ---
		uri_component_get_type :: proc() -> gobj.Type ---
		uri_copy :: proc(uri: ^glib.Uri, first_component: URIComponent, #c_vararg var_args: ..any) -> ^glib.Uri ---
		uri_decode_data_uri :: proc(uri: cstring, content_type: ^cstring) -> ^glib.Bytes ---
		uri_equal :: proc(uri1: ^glib.Uri, uri2: ^glib.Uri) -> glib.boolean ---
		websocket_client_prepare_handshake :: proc(msg: ^Message, origin: cstring, protocols: [^]cstring, supported_extensions: ^glib.PtrArray) ---
		websocket_client_verify_handshake :: proc(msg: ^Message, supported_extensions: ^glib.PtrArray, accepted_extensions: ^^glib.List, error: ^^glib.Error) -> glib.boolean ---
		websocket_close_code_get_type :: proc() -> gobj.Type ---
		websocket_connection_close :: proc(self: ^WebsocketConnection, code: glib.ushort, data: cstring) ---
		websocket_connection_get_close_code :: proc(self: ^WebsocketConnection) -> glib.ushort ---
		websocket_connection_get_close_data :: proc(self: ^WebsocketConnection) -> cstring ---
		websocket_connection_get_connection_type :: proc(self: ^WebsocketConnection) -> WebsocketConnectionType ---
		websocket_connection_get_extensions :: proc(self: ^WebsocketConnection) -> ^glib.List ---
		websocket_connection_get_io_stream :: proc(self: ^WebsocketConnection) -> ^gio.IOStream ---
		websocket_connection_get_keepalive_interval :: proc(self: ^WebsocketConnection) -> glib.uint_ ---
		websocket_connection_get_max_incoming_payload_size :: proc(self: ^WebsocketConnection) -> glib.uint64 ---
		websocket_connection_get_origin :: proc(self: ^WebsocketConnection) -> cstring ---
		websocket_connection_get_protocol :: proc(self: ^WebsocketConnection) -> cstring ---
		websocket_connection_get_state :: proc(self: ^WebsocketConnection) -> WebsocketState ---
		websocket_connection_get_type :: proc() -> gobj.Type ---
		websocket_connection_get_uri :: proc(self: ^WebsocketConnection) -> ^glib.Uri ---
		websocket_connection_new :: proc(stream: ^gio.IOStream, uri: ^glib.Uri, type: WebsocketConnectionType, origin: cstring, protocol: cstring, extensions: ^glib.List) -> ^WebsocketConnection ---
		websocket_connection_send_binary :: proc(self: ^WebsocketConnection, data: glib.constpointer, length: glib.size) ---
		websocket_connection_send_message :: proc(self: ^WebsocketConnection, type: WebsocketDataType, message: ^glib.Bytes) ---
		websocket_connection_send_text :: proc(self: ^WebsocketConnection, text: cstring) ---
		websocket_connection_set_keepalive_interval :: proc(self: ^WebsocketConnection, interval: glib.uint_) ---
		websocket_connection_set_max_incoming_payload_size :: proc(self: ^WebsocketConnection, max_incoming_payload_size: glib.uint64) ---
		websocket_connection_type_get_type :: proc() -> gobj.Type ---
		websocket_data_type_get_type :: proc() -> gobj.Type ---
		websocket_error_get_type :: proc() -> gobj.Type ---
		websocket_error_quark :: proc() -> glib.Quark ---
		websocket_extension_configure :: proc(extension: ^WebsocketExtension, connection_type: WebsocketConnectionType, params: ^glib.HashTable, error: ^^glib.Error) -> glib.boolean ---
		websocket_extension_deflate_get_type :: proc() -> gobj.Type ---
		websocket_extension_get_request_params :: proc(extension: ^WebsocketExtension) -> cstring ---
		websocket_extension_get_response_params :: proc(extension: ^WebsocketExtension) -> cstring ---
		websocket_extension_get_type :: proc() -> gobj.Type ---
		websocket_extension_manager_get_type :: proc() -> gobj.Type ---
		websocket_extension_process_incoming_message :: proc(extension: ^WebsocketExtension, header: ^glib.uint8, payload: ^glib.Bytes, error: ^^glib.Error) -> ^glib.Bytes ---
		websocket_extension_process_outgoing_message :: proc(extension: ^WebsocketExtension, header: ^glib.uint8, payload: ^glib.Bytes, error: ^^glib.Error) -> ^glib.Bytes ---
		websocket_server_check_handshake :: proc(msg: ^ServerMessage, origin: cstring, protocols: [^]cstring, supported_extensions: ^glib.PtrArray, error: ^^glib.Error) -> glib.boolean ---
		websocket_server_process_handshake :: proc(msg: ^ServerMessage, expected_origin: cstring, protocols: [^]cstring, supported_extensions: ^glib.PtrArray, accepted_extensions: ^^glib.List) -> glib.boolean ---
		websocket_state_get_type :: proc() -> gobj.Type ---

	types
		Auth :: struct {parent_instance: gobj.Object}
		AuthClass :: struct {parent_class: gobj.ObjectClass, scheme_name: cstring, strength: glib.uint_, update: update_func_ptr_anon_0, get_protection_space: et_protection_space_func_ptr_anon_1, authenticate: authenticate_func_ptr_anon_2, is_authenticated: is_authenticated_func_ptr_anon_3, get_authorization: et_authorization_func_ptr_anon_4, is_ready: is_ready_func_ptr_anon_5, can_authenticate: can_authenticate_func_ptr_anon_6, padding: [6]glib.pointer}
		AuthDomain :: struct {parent_instance: gobj.Object}
		AuthDomainBasic :: struct #packed {}
		AuthDomainBasicAuthCallback :: #type proc(domain: ^AuthDomain, msg: ^ServerMessage, username: cstring, password: cstring, user_data: glib.pointer) -> glib.boolean
		AuthDomainBasicClass :: struct {parent_class: AuthDomainClass}
		AuthDomainClass :: struct {parent_class: gobj.ObjectClass, accepts: accepts_func_ptr_anon_14, challenge: challenge_func_ptr_anon_15, check_password: check_password_func_ptr_anon_16, padding: [6]glib.pointer}
		AuthDomainDigest :: struct #packed {}
		AuthDomainDigestAuthCallback :: #type proc(domain: ^AuthDomain, msg: ^ServerMessage, username: cstring, user_data: glib.pointer) -> cstring
		AuthDomainDigestClass :: struct {parent_class: AuthDomainClass}
		AuthDomainFilter :: #type proc(domain: ^AuthDomain, msg: ^ServerMessage, user_data: glib.pointer) -> glib.boolean
		AuthDomainGenericAuthCallback :: #type proc(domain: ^AuthDomain, msg: ^ServerMessage, username: cstring, user_data: glib.pointer) -> glib.boolean
		AuthManager :: struct #packed {}
		AuthManagerClass :: struct {parent_class: gobj.ObjectClass}
		Cache :: struct {parent_instance: gobj.Object}
		CacheClass :: struct {parent_class: gobj.ObjectClass, get_cacheability: et_cacheability_func_ptr_anon_7, padding: [4]glib.pointer}
		CacheType :: enum u32 {CACHE_SINGLE_USER = 0, CACHE_SHARED = 1}
		Cacheability :: bit_set[CacheabilityBit]
		CacheabilityBit :: enum u32 {CACHE_CACHEABLE = 0, CACHE_UNCACHEABLE = 1, CACHE_INVALIDATES = 2, CACHE_VALIDATES = 3}
		ContentDecoder :: struct #packed {}
		ContentDecoderClass :: struct {parent_class: gobj.ObjectClass}
		ContentSniffer :: struct #packed {}
		ContentSnifferClass :: struct {parent_class: gobj.ObjectClass}
		Cookie :: struct #packed {}
		CookieJar :: struct {parent_instance: gobj.Object}
		CookieJarAcceptPolicy :: enum u32 {COOKIE_JAR_ACCEPT_ALWAYS = 0, COOKIE_JAR_ACCEPT_NEVER = 1, COOKIE_JAR_ACCEPT_NO_THIRD_PARTY = 2, COOKIE_JAR_ACCEPT_GRANDFATHERED_THIRD_PARTY = 3}
		CookieJarClass :: struct {parent_class: gobj.ObjectClass, save: save_func_ptr_anon_8, is_persistent: is_persistent_func_ptr_anon_9, changed: changed_func_ptr_anon_10, padding: [6]glib.pointer}
		CookieJarDB :: struct #packed {}
		CookieJarDBClass :: struct {parent_class: CookieJarClass}
		CookieJarText :: struct #packed {}
		CookieJarTextClass :: struct {parent_class: CookieJarClass}
		DateFormat :: enum u32 {DATE_HTTP = 1, DATE_COOKIE = 2}
		Encoding :: enum u32 {UNRECOGNIZED = 0, NONE = 1, CONTENT_LENGTH = 2, EOF = 3, CHUNKED = 4, BYTERANGES = 5}
		Expectation :: bit_set[ExpectationBit]
		ExpectationBit :: enum u32 {UNRECOGNIZED = 0, CONTINUE = 1}
		HSTSEnforcer :: struct {parent_instance: gobj.Object}
		HSTSEnforcerClass :: struct {parent_class: gobj.ObjectClass, is_persistent: is_persistent_func_ptr_anon_11, has_valid_policy: has_valid_policy_func_ptr_anon_12, changed: changed_func_ptr_anon_13, padding: [4]glib.pointer}
		HSTSEnforcerDB :: struct #packed {}
		HSTSEnforcerDBClass :: struct {parent_class: HSTSEnforcerClass}
		HSTSPolicy :: struct #packed {}
		HTTPVersion :: enum u32 {HTTP_1_0 = 0, HTTP_1_1 = 1, HTTP_2_0 = 2}
		Logger :: struct #packed {}
		LoggerClass :: struct {parent_class: gobj.ObjectClass}
		LoggerFilter :: #type proc(logger: ^Logger, msg: ^Message, user_data: glib.pointer) -> LoggerLogLevel
		LoggerLogLevel :: enum u32 {LOGGER_LOG_NONE = 0, LOGGER_LOG_MINIMAL = 1, LOGGER_LOG_HEADERS = 2, LOGGER_LOG_BODY = 3}
		LoggerPrinter :: #type proc(logger: ^Logger, level: LoggerLogLevel, direction: i8, data: cstring, user_data: glib.pointer)
		MemoryUse :: enum u32 {MEMORY_STATIC = 0, MEMORY_TAKE = 1, MEMORY_COPY = 2}
		Message :: struct #packed {}
		MessageBody :: struct {data: cstring, length: glib.offset}
		MessageClass :: struct {parent_class: gobj.ObjectClass}
		MessageFlags :: bit_set[MessageFlagsBit]
		MessageFlagsBit :: enum u32 {MESSAGE_NO_REDIRECT = 1, MESSAGE_NEW_CONNECTION = 2, MESSAGE_IDEMPOTENT = 3, MESSAGE_DO_NOT_USE_AUTH_CACHE = 4, MESSAGE_COLLECT_METRICS = 5}
		MessageHeaders :: struct #packed {}
		MessageHeadersForeachFunc :: #type proc(name: cstring, value: cstring, user_data: glib.pointer)
		MessageHeadersIter :: struct {dummy: [3]glib.pointer}
		MessageHeadersType :: enum u32 {MESSAGE_HEADERS_REQUEST = 0, MESSAGE_HEADERS_RESPONSE = 1, MESSAGE_HEADERS_MULTIPART = 2}
		MessageMetrics :: struct #packed {}
		MessagePriority :: enum u32 {VERY_LOW = 0, LOW = 1, NORMAL = 2, HIGH = 3, VERY_HIGH = 4}
		Multipart :: struct #packed {}
		MultipartInputStream :: struct #packed {}
		MultipartInputStreamClass :: struct {parent_class: gio.FilterInputStreamClass}
		Range :: struct {start: glib.offset, end: glib.offset}
		SameSitePolicy :: enum u32 {NONE = 0, LAX = 1, STRICT = 2}
		Server :: struct {parent_instance: gobj.Object}
		ServerCallback :: #type proc(server: ^Server, msg: ^ServerMessage, path: cstring, query: ^glib.HashTable, user_data: glib.pointer)
		ServerClass :: struct {parent_class: gobj.ObjectClass, request_started: request_started_func_ptr_anon_17, request_read: request_read_func_ptr_anon_18, request_finished: request_finished_func_ptr_anon_19, request_aborted: request_aborted_func_ptr_anon_20, padding: [6]glib.pointer}
		ServerListenOptions :: bit_set[ServerListenOptionsBit]
		ServerListenOptionsBit :: enum u32 {SERVER_LISTEN_HTTPS = 0, SERVER_LISTEN_IPV4_ONLY = 1, SERVER_LISTEN_IPV6_ONLY = 2}
		ServerMessage :: struct #packed {}
		ServerMessageClass :: struct {parent_class: gobj.ObjectClass}
		ServerWebsocketCallback :: #type proc(server: ^Server, msg: ^ServerMessage, path: cstring, connection: ^WebsocketConnection, user_data: glib.pointer)
		Session :: struct {parent_instance: gobj.Object}
		SessionClass :: struct {parent_class: gobj.ObjectClass, request_queued: request_queued_func_ptr_anon_21, request_unqueued: request_unqueued_func_ptr_anon_22, _soup_reserved1: _soup_reserved1_func_ptr_anon_23, _soup_reserved2: _soup_reserved2_func_ptr_anon_24, _soup_reserved3: _soup_reserved3_func_ptr_anon_25, _soup_reserved4: _soup_reserved4_func_ptr_anon_26, _soup_reserved5: _soup_reserved5_func_ptr_anon_27, _soup_reserved6: _soup_reserved6_func_ptr_anon_28, _soup_reserved7: _soup_reserved7_func_ptr_anon_29, _soup_reserved8: _soup_reserved8_func_ptr_anon_30}
		SessionError :: enum u32 {PARSING = 0, ENCODING = 1, TOO_MANY_REDIRECTS = 2, TOO_MANY_RESTARTS = 3, REDIRECT_NO_LOCATION = 4, REDIRECT_BAD_URI = 5, MESSAGE_ALREADY_IN_QUEUE = 6}
		SessionFeature :: struct #packed {}
		SessionFeatureInterface :: struct #packed {}
		Status :: enum u32 {NONE = 0, CONTINUE = 100, SWITCHING_PROTOCOLS = 101, PROCESSING = 102, OK = 200, CREATED = 201, ACCEPTED = 202, NON_AUTHORITATIVE = 203, NO_CONTENT = 204, RESET_CONTENT = 205, PARTIAL_CONTENT = 206, MULTI_STATUS = 207, MULTIPLE_CHOICES = 300, MOVED_PERMANENTLY = 301, FOUND = 302, MOVED_TEMPORARILY = 302, SEE_OTHER = 303, NOT_MODIFIED = 304, USE_PROXY = 305, NOT_APPEARING_IN_THIS_PROTOCOL = 306, TEMPORARY_REDIRECT = 307, PERMANENT_REDIRECT = 308, BAD_REQUEST = 400, UNAUTHORIZED = 401, PAYMENT_REQUIRED = 402, FORBIDDEN = 403, NOT_FOUND = 404, METHOD_NOT_ALLOWED = 405, NOT_ACCEPTABLE = 406, PROXY_AUTHENTICATION_REQUIRED = 407, PROXY_UNAUTHORIZED = 407, REQUEST_TIMEOUT = 408, CONFLICT = 409, GONE = 410, LENGTH_REQUIRED = 411, PRECONDITION_FAILED = 412, REQUEST_ENTITY_TOO_LARGE = 413, REQUEST_URI_TOO_LONG = 414, UNSUPPORTED_MEDIA_TYPE = 415, REQUESTED_RANGE_NOT_SATISFIABLE = 416, INVALID_RANGE = 416, EXPECTATION_FAILED = 417, MISDIRECTED_REQUEST = 421, UNPROCESSABLE_ENTITY = 422, LOCKED = 423, FAILED_DEPENDENCY = 424, INTERNAL_SERVER_ERROR = 500, NOT_IMPLEMENTED = 501, BAD_GATEWAY = 502, SERVICE_UNAVAILABLE = 503, GATEWAY_TIMEOUT = 504, HTTP_VERSION_NOT_SUPPORTED = 505, INSUFFICIENT_STORAGE = 507, NOT_EXTENDED = 510}
		TLDError :: enum u32 {INVALID_HOSTNAME = 0, IS_IP_ADDRESS = 1, NOT_ENOUGH_DOMAINS = 2, NO_BASE_DOMAIN = 3, NO_PSL_DATA = 4}
		URIComponent :: enum u32 {URI_NONE = 0, URI_SCHEME = 1, URI_USER = 2, URI_PASSWORD = 3, URI_AUTH_PARAMS = 4, URI_HOST = 5, URI_PORT = 6, URI_PATH = 7, URI_QUERY = 8, URI_FRAGMENT = 9}
		WebsocketCloseCode :: enum u32 {WEBSOCKET_CLOSE_NORMAL = 1000, WEBSOCKET_CLOSE_GOING_AWAY = 1001, WEBSOCKET_CLOSE_PROTOCOL_ERROR = 1002, WEBSOCKET_CLOSE_UNSUPPORTED_DATA = 1003, WEBSOCKET_CLOSE_NO_STATUS = 1005, WEBSOCKET_CLOSE_ABNORMAL = 1006, WEBSOCKET_CLOSE_BAD_DATA = 1007, WEBSOCKET_CLOSE_POLICY_VIOLATION = 1008, WEBSOCKET_CLOSE_TOO_BIG = 1009, WEBSOCKET_CLOSE_NO_EXTENSION = 1010, WEBSOCKET_CLOSE_SERVER_ERROR = 1011, WEBSOCKET_CLOSE_TLS_HANDSHAKE = 1015}
		WebsocketConnection :: struct #packed {}
		WebsocketConnectionClass :: struct {parent_class: gobj.ObjectClass}
		WebsocketConnectionType :: enum u32 {WEBSOCKET_CONNECTION_UNKNOWN = 0, WEBSOCKET_CONNECTION_CLIENT = 1, WEBSOCKET_CONNECTION_SERVER = 2}
		WebsocketDataType :: enum u32 {WEBSOCKET_DATA_TEXT = 1, WEBSOCKET_DATA_BINARY = 2}
		WebsocketError :: enum u32 {FAILED = 0, NOT_WEBSOCKET = 1, BAD_HANDSHAKE = 2, BAD_ORIGIN = 3}
		WebsocketExtension :: struct {parent_instance: gobj.Object}
		WebsocketExtensionClass :: struct {parent_class: gobj.ObjectClass, name: cstring, configure: configure_func_ptr_anon_31, get_request_params: et_request_params_func_ptr_anon_32, get_response_params: et_response_params_func_ptr_anon_33, process_outgoing_message: process_outgoing_message_func_ptr_anon_34, process_incoming_message: process_incoming_message_func_ptr_anon_35, padding: [6]glib.pointer}
		WebsocketExtensionDeflate :: struct #packed {}
		WebsocketExtensionDeflateClass :: struct {parent_class: WebsocketExtensionClass}
		WebsocketExtensionManager :: struct #packed {}
		WebsocketExtensionManagerClass :: struct {parent_class: gobj.ObjectClass}
		WebsocketState :: enum u32 {OPEN = 1, CLOSING = 2, CLOSED = 3}
		_soup_reserved1_func_ptr_anon_23 :: #type proc()
		_soup_reserved2_func_ptr_anon_24 :: #type proc()
		_soup_reserved3_func_ptr_anon_25 :: #type proc()
		_soup_reserved4_func_ptr_anon_26 :: #type proc()
		_soup_reserved5_func_ptr_anon_27 :: #type proc()
		_soup_reserved6_func_ptr_anon_28 :: #type proc()
		_soup_reserved7_func_ptr_anon_29 :: #type proc()
		_soup_reserved8_func_ptr_anon_30 :: #type proc()
		accepts_func_ptr_anon_14 :: #type proc(domain: ^AuthDomain, msg: ^ServerMessage, header: cstring) -> cstring
		authenticate_func_ptr_anon_2 :: #type proc(auth: ^Auth, username: cstring, password: cstring)
		can_authenticate_func_ptr_anon_6 :: #type proc(auth: ^Auth) -> glib.boolean
		challenge_func_ptr_anon_15 :: #type proc(domain: ^AuthDomain, msg: ^ServerMessage) -> cstring
		changed_func_ptr_anon_10 :: #type proc(jar: ^CookieJar, old_cookie: ^Cookie, new_cookie: ^Cookie)
		changed_func_ptr_anon_13 :: #type proc(enforcer: ^HSTSEnforcer, old_policy: ^HSTSPolicy, new_policy: ^HSTSPolicy)
		check_password_func_ptr_anon_16 :: #type proc(domain: ^AuthDomain, msg: ^ServerMessage, username: cstring, password: cstring) -> glib.boolean
		configure_func_ptr_anon_31 :: #type proc(extension: ^WebsocketExtension, connection_type: WebsocketConnectionType, params: ^glib.HashTable, error: ^^glib.Error) -> glib.boolean
		et_authorization_func_ptr_anon_4 :: #type proc(auth: ^Auth, msg: ^Message) -> cstring
		et_cacheability_func_ptr_anon_7 :: #type proc(cache: ^Cache, msg: ^Message) -> Cacheability
		et_protection_space_func_ptr_anon_1 :: #type proc(auth: ^Auth, source_uri: ^glib.Uri) -> ^glib.SList
		et_request_params_func_ptr_anon_32 :: #type proc(extension: ^WebsocketExtension) -> cstring
		et_response_params_func_ptr_anon_33 :: #type proc(extension: ^WebsocketExtension) -> cstring
		has_valid_policy_func_ptr_anon_12 :: #type proc(hsts_enforcer: ^HSTSEnforcer, domain: cstring) -> glib.boolean
		is_authenticated_func_ptr_anon_3 :: #type proc(auth: ^Auth) -> glib.boolean
		is_persistent_func_ptr_anon_11 :: #type proc(hsts_enforcer: ^HSTSEnforcer) -> glib.boolean
		is_persistent_func_ptr_anon_9 :: #type proc(jar: ^CookieJar) -> glib.boolean
		is_ready_func_ptr_anon_5 :: #type proc(auth: ^Auth, msg: ^Message) -> glib.boolean
		process_incoming_message_func_ptr_anon_35 :: #type proc(extension: ^WebsocketExtension, header: ^glib.uint8, payload: ^glib.Bytes, error: ^^glib.Error) -> ^glib.Bytes
		process_outgoing_message_func_ptr_anon_34 :: #type proc(extension: ^WebsocketExtension, header: ^glib.uint8, payload: ^glib.Bytes, error: ^^glib.Error) -> ^glib.Bytes
		request_aborted_func_ptr_anon_20 :: #type proc(server: ^Server, msg: ^ServerMessage)
		request_finished_func_ptr_anon_19 :: #type proc(server: ^Server, msg: ^ServerMessage)
		request_queued_func_ptr_anon_21 :: #type proc(session: ^Session, msg: ^Message)
		request_read_func_ptr_anon_18 :: #type proc(server: ^Server, msg: ^ServerMessage)
		request_started_func_ptr_anon_17 :: #type proc(server: ^Server, msg: ^ServerMessage)
		request_unqueued_func_ptr_anon_22 :: #type proc(session: ^Session, msg: ^Message)
		save_func_ptr_anon_8 :: #type proc(jar: ^CookieJar)
		update_func_ptr_anon_0 :: #type proc(auth: ^Auth, msg: ^Message, auth_header: ^glib.HashTable) -> glib.boolean

	files:
		patched.odin
		soup.odin
```

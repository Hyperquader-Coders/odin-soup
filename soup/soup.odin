package soup

import gio "glib:gio"
import glib "glib:glib"
import gobj "glib:gobject"

__SOUP_H__ :: 1
__SOUP_TYPES_H__ :: 1
MAJOR_VERSION :: (3)
MINOR_VERSION :: (4)
MICRO_VERSION :: (4)
VERSION_3_0 :: (((3) << 16 | (0) << 8))
VERSION_3_2 :: (((3) << 16 | (2) << 8))
VERSION_3_4 :: (((3) << 16 | (4) << 8))
VERSION_CUR_STABLE :: ((((3)) << 16 | ((4)) << 8))
VERSION_PREV_STABLE :: ((((3)) << 16 | ((4) - 2) << 8))
VERSION_MIN_REQUIRED :: (((((3)) << 16 | ((4)) << 8)))
VERSION_MAX_ALLOWED :: (((((3)) << 16 | ((4)) << 8)))
__SOUP_HEADERS_H__ :: 1
TYPE_MESSAGE_BODY :: message_body_get_type
TYPE_MESSAGE_HEADERS :: message_headers_get_type
METHOD_OPTIONS :: "OPTIONS"
METHOD_GET :: "GET"
METHOD_HEAD :: "HEAD"
METHOD_POST :: "POST"
METHOD_PUT :: "PUT"
METHOD_DELETE :: "DELETE"
METHOD_TRACE :: "TRACE"
METHOD_CONNECT :: "CONNECT"
METHOD_PROPFIND :: "PROPFIND"
METHOD_PROPPATCH :: "PROPPATCH"
METHOD_MKCOL :: "MKCOL"
METHOD_COPY :: "COPY"
METHOD_MOVE :: "MOVE"
METHOD_LOCK :: "LOCK"
METHOD_UNLOCK :: "UNLOCK"
TYPE_MULTIPART :: multipart_get_type
TYPE_MESSAGE :: message_get_type
TYPE_AUTH :: auth_get_type
TYPE_AUTH_BASIC :: auth_basic_get_type
TYPE_AUTH_DIGEST :: auth_digest_get_type
TYPE_AUTH_NTLM :: auth_ntlm_get_type
TYPE_AUTH_NEGOTIATE :: auth_negotiate_get_type
TYPE_AUTH_MANAGER :: auth_manager_get_type
TYPE_CACHE :: cache_get_type
TYPE_CONTENT_DECODER :: content_decoder_get_type
TYPE_CONTENT_SNIFFER :: content_sniffer_get_type
TYPE_COOKIE :: cookie_get_type
COOKIE_MAX_AGE_ONE_HOUR :: (60 * 60)
COOKIE_MAX_AGE_ONE_DAY :: ((60 * 60) * 24)
COOKIE_MAX_AGE_ONE_WEEK :: (((60 * 60) * 24) * 7)
COOKIE_MAX_AGE_ONE_YEAR :: 31556926
TYPE_COOKIE_JAR :: cookie_jar_get_type
TYPE_COOKIE_JAR_DB :: cookie_jar_db_get_type
TYPE_COOKIE_JAR_TEXT :: cookie_jar_text_get_type
TYPE_CACHEABILITY :: cacheability_get_type
TYPE_CACHE_TYPE :: cache_type_get_type
TYPE_COOKIE_JAR_ACCEPT_POLICY :: cookie_jar_accept_policy_get_type
TYPE_SAME_SITE_POLICY :: same_site_policy_get_type
TYPE_MEMORY_USE :: memory_use_get_type
TYPE_SERVER_LISTEN_OPTIONS :: server_listen_options_get_type
TYPE_DATE_FORMAT :: date_format_get_type
TYPE_LOGGER_LOG_LEVEL :: logger_log_level_get_type
TYPE_MESSAGE_HEADERS_TYPE :: message_headers_type_get_type
TYPE_ENCODING :: encoding_get_type
TYPE_EXPECTATION :: expectation_get_type
TYPE_MESSAGE_FLAGS :: message_flags_get_type
TYPE_MESSAGE_PRIORITY :: message_priority_get_type
TYPE_SESSION_ERROR :: session_error_get_type
TYPE_STATUS :: status_get_type
TYPE_HTTP_VERSION :: http_version_get_type
TYPE_TLD_ERROR :: tld_error_get_type
TYPE_URI_COMPONENT :: uri_component_get_type
TYPE_WEBSOCKET_ERROR :: websocket_error_get_type
TYPE_WEBSOCKET_CONNECTION_TYPE :: websocket_connection_type_get_type
TYPE_WEBSOCKET_DATA_TYPE :: websocket_data_type_get_type
TYPE_WEBSOCKET_CLOSE_CODE :: websocket_close_code_get_type
TYPE_WEBSOCKET_STATE :: websocket_state_get_type
__SOUP_FORM_H__ :: 1
FORM_MIME_TYPE_URLENCODED :: "application/x-www-form-urlencoded"
FORM_MIME_TYPE_MULTIPART :: "multipart/form-data"
TYPE_HSTS_ENFORCER :: hsts_enforcer_get_type
TYPE_HSTS_ENFORCER_DB :: hsts_enforcer_db_get_type
TYPE_HSTS_POLICY :: hsts_policy_get_type
HSTS_POLICY_MAX_AGE_PAST :: (0)
TYPE_LOGGER :: logger_get_type
TYPE_MESSAGE_METRICS :: message_metrics_get_type
TYPE_MULTIPART_INPUT_STREAM :: multipart_input_stream_get_type
TYPE_AUTH_DOMAIN :: auth_domain_get_type
TYPE_AUTH_DOMAIN_BASIC :: auth_domain_basic_get_type
TYPE_AUTH_DOMAIN_DIGEST :: auth_domain_digest_get_type
HTTP_URI_FLAGS :: glib.UriFlags{.HAS_PASSWORD, .ENCODED_PATH, .ENCODED_QUERY, .ENCODED_FRAGMENT, .SCHEME_NORMALIZE}
WEBSOCKET_ERROR :: websocket_error_quark
TYPE_WEBSOCKET_CONNECTION :: websocket_connection_get_type
TYPE_SERVER :: server_get_type
__SOUP_SERVER_MESSAGE_H__ :: 1
TYPE_SERVER_MESSAGE :: server_message_get_type
TYPE_SESSION :: session_get_type
SESSION_ERROR :: session_error_quark
TYPE_SESSION_FEATURE :: session_feature_get_type
TLD_ERROR :: tld_error_quark
TYPE_WEBSOCKET_EXTENSION :: websocket_extension_get_type
TYPE_WEBSOCKET_EXTENSION_DEFLATE :: websocket_extension_deflate_get_type
TYPE_WEBSOCKET_EXTENSION_MANAGER :: websocket_extension_manager_get_type

Status :: enum u32 {NONE = 0, CONTINUE = 100, SWITCHING_PROTOCOLS = 101, PROCESSING = 102, OK = 200, CREATED = 201, ACCEPTED = 202, NON_AUTHORITATIVE = 203, NO_CONTENT = 204, RESET_CONTENT = 205, PARTIAL_CONTENT = 206, MULTI_STATUS = 207, MULTIPLE_CHOICES = 300, MOVED_PERMANENTLY = 301, FOUND = 302, MOVED_TEMPORARILY = 302, SEE_OTHER = 303, NOT_MODIFIED = 304, USE_PROXY = 305, NOT_APPEARING_IN_THIS_PROTOCOL = 306, TEMPORARY_REDIRECT = 307, PERMANENT_REDIRECT = 308, BAD_REQUEST = 400, UNAUTHORIZED = 401, PAYMENT_REQUIRED = 402, FORBIDDEN = 403, NOT_FOUND = 404, METHOD_NOT_ALLOWED = 405, NOT_ACCEPTABLE = 406, PROXY_AUTHENTICATION_REQUIRED = 407, PROXY_UNAUTHORIZED = 407, REQUEST_TIMEOUT = 408, CONFLICT = 409, GONE = 410, LENGTH_REQUIRED = 411, PRECONDITION_FAILED = 412, REQUEST_ENTITY_TOO_LARGE = 413, REQUEST_URI_TOO_LONG = 414, UNSUPPORTED_MEDIA_TYPE = 415, REQUESTED_RANGE_NOT_SATISFIABLE = 416, INVALID_RANGE = 416, EXPECTATION_FAILED = 417, MISDIRECTED_REQUEST = 421, UNPROCESSABLE_ENTITY = 422, LOCKED = 423, FAILED_DEPENDENCY = 424, INTERNAL_SERVER_ERROR = 500, NOT_IMPLEMENTED = 501, BAD_GATEWAY = 502, SERVICE_UNAVAILABLE = 503, GATEWAY_TIMEOUT = 504, HTTP_VERSION_NOT_SUPPORTED = 505, INSUFFICIENT_STORAGE = 507, NOT_EXTENDED = 510 }
HTTPVersion :: enum u32 {HTTP_1_0 = 0, HTTP_1_1 = 1, HTTP_2_0 = 2 }
Auth :: struct {
    parent_instance: gobj.Object,
}

AuthDomain :: struct {
    parent_instance: gobj.Object,
}

Cookie :: struct #packed {}

CookieJar :: struct {
    parent_instance: gobj.Object,
}

HSTSEnforcer :: struct {
    parent_instance: gobj.Object,
}

HSTSPolicy :: struct #packed {}

Message :: struct #packed {}

MessageMetrics :: struct #packed {}

Server :: struct {
    parent_instance: gobj.Object,
}

ServerMessage :: struct #packed {}

Session :: struct {
    parent_instance: gobj.Object,
}

SessionFeature :: struct #packed {}

WebsocketConnection :: struct #packed {}

WebsocketExtension :: struct {
    parent_instance: gobj.Object,
}

MemoryUse :: enum u32 {MEMORY_STATIC = 0, MEMORY_TAKE = 1, MEMORY_COPY = 2 }
MessageBody :: struct {
    data: cstring,
    length: glib.offset,
}
MessageHeaders :: struct #packed {}

MessageHeadersType :: enum u32 {MESSAGE_HEADERS_REQUEST = 0, MESSAGE_HEADERS_RESPONSE = 1, MESSAGE_HEADERS_MULTIPART = 2 }
MessageHeadersForeachFunc :: #type proc "c" (name: cstring, value: cstring, user_data: glib.pointer)
MessageHeadersIter :: struct {
    dummy: [3]glib.pointer,
}
Encoding :: enum u32 {UNRECOGNIZED = 0, NONE = 1, CONTENT_LENGTH = 2, EOF = 3, CHUNKED = 4, BYTERANGES = 5 }
ExpectationBit :: enum u32 {UNRECOGNIZED = 0, CONTINUE = 1}
Expectation :: bit_set[ExpectationBit; u32]
Range :: struct {
    start: glib.offset,
    end: glib.offset,
}
Multipart :: struct #packed {}

MessageClass :: struct {
    parent_class: gobj.ObjectClass,
}
MessageFlagsBit :: enum u32 {MESSAGE_NO_REDIRECT = 1, MESSAGE_NEW_CONNECTION = 2, MESSAGE_IDEMPOTENT = 3, MESSAGE_DO_NOT_USE_AUTH_CACHE = 4, MESSAGE_COLLECT_METRICS = 5}
MessageFlags :: bit_set[MessageFlagsBit; u32]
MessagePriority :: enum u32 {VERY_LOW = 0, LOW = 1, NORMAL = 2, HIGH = 3, VERY_HIGH = 4 }
update_func_ptr_anon_0 :: #type proc "c" (auth: ^Auth, msg: ^Message, auth_header: ^glib.HashTable) -> glib.boolean
et_protection_space_func_ptr_anon_1 :: #type proc "c" (auth: ^Auth, source_uri: ^glib.Uri) -> ^glib.SList
authenticate_func_ptr_anon_2 :: #type proc "c" (auth: ^Auth, username: cstring, password: cstring)
is_authenticated_func_ptr_anon_3 :: #type proc "c" (auth: ^Auth) -> glib.boolean
et_authorization_func_ptr_anon_4 :: #type proc "c" (auth: ^Auth, msg: ^Message) -> cstring
is_ready_func_ptr_anon_5 :: #type proc "c" (auth: ^Auth, msg: ^Message) -> glib.boolean
can_authenticate_func_ptr_anon_6 :: #type proc "c" (auth: ^Auth) -> glib.boolean
AuthClass :: struct {
    parent_class: gobj.ObjectClass,
    scheme_name: cstring,
    strength: glib.uint_,
    update: update_func_ptr_anon_0,
    get_protection_space: et_protection_space_func_ptr_anon_1,
    authenticate: authenticate_func_ptr_anon_2,
    is_authenticated: is_authenticated_func_ptr_anon_3,
    get_authorization: et_authorization_func_ptr_anon_4,
    is_ready: is_ready_func_ptr_anon_5,
    can_authenticate: can_authenticate_func_ptr_anon_6,
    padding: [6]glib.pointer,
}

AuthManager :: struct #packed {}

AuthManagerClass :: struct {
    parent_class: gobj.ObjectClass,
}
Cache :: struct {
    parent_instance: gobj.Object,
}

CacheabilityBit :: enum u32 {CACHE_CACHEABLE = 0, CACHE_UNCACHEABLE = 1, CACHE_INVALIDATES = 2, CACHE_VALIDATES = 3}
Cacheability :: bit_set[CacheabilityBit; u32]
et_cacheability_func_ptr_anon_7 :: #type proc "c" (cache: ^Cache, msg: ^Message) -> Cacheability
CacheClass :: struct {
    parent_class: gobj.ObjectClass,
    get_cacheability: et_cacheability_func_ptr_anon_7,
    padding: [4]glib.pointer,
}

CacheType :: enum u32 {CACHE_SINGLE_USER = 0, CACHE_SHARED = 1 }
ContentDecoder :: struct #packed {}

ContentDecoderClass :: struct {
    parent_class: gobj.ObjectClass,
}
ContentSniffer :: struct #packed {}

ContentSnifferClass :: struct {
    parent_class: gobj.ObjectClass,
}
SameSitePolicy :: enum u32 {NONE = 0, LAX = 1, STRICT = 2 }
save_func_ptr_anon_8 :: #type proc "c" (jar: ^CookieJar)
is_persistent_func_ptr_anon_9 :: #type proc "c" (jar: ^CookieJar) -> glib.boolean
changed_func_ptr_anon_10 :: #type proc "c" (jar: ^CookieJar, old_cookie: ^Cookie, new_cookie: ^Cookie)
CookieJarClass :: struct {
    parent_class: gobj.ObjectClass,
    save: save_func_ptr_anon_8,
    is_persistent: is_persistent_func_ptr_anon_9,
    changed: changed_func_ptr_anon_10,
    padding: [6]glib.pointer,
}

CookieJarAcceptPolicy :: enum u32 {COOKIE_JAR_ACCEPT_ALWAYS = 0, COOKIE_JAR_ACCEPT_NEVER = 1, COOKIE_JAR_ACCEPT_NO_THIRD_PARTY = 2, COOKIE_JAR_ACCEPT_GRANDFATHERED_THIRD_PARTY = 3 }
CookieJarDB :: struct #packed {}

CookieJarDBClass :: struct {
    parent_class: CookieJarClass,
}
CookieJarText :: struct #packed {}

CookieJarTextClass :: struct {
    parent_class: CookieJarClass,
}
DateFormat :: enum u32 {DATE_HTTP = 1, DATE_COOKIE = 2 }
is_persistent_func_ptr_anon_11 :: #type proc "c" (hsts_enforcer: ^HSTSEnforcer) -> glib.boolean
has_valid_policy_func_ptr_anon_12 :: #type proc "c" (hsts_enforcer: ^HSTSEnforcer, domain: cstring) -> glib.boolean
changed_func_ptr_anon_13 :: #type proc "c" (enforcer: ^HSTSEnforcer, old_policy: ^HSTSPolicy, new_policy: ^HSTSPolicy)
HSTSEnforcerClass :: struct {
    parent_class: gobj.ObjectClass,
    is_persistent: is_persistent_func_ptr_anon_11,
    has_valid_policy: has_valid_policy_func_ptr_anon_12,
    changed: changed_func_ptr_anon_13,
    padding: [4]glib.pointer,
}

HSTSEnforcerDB :: struct #packed {}

HSTSEnforcerDBClass :: struct {
    parent_class: HSTSEnforcerClass,
}
Logger :: struct #packed {}

LoggerClass :: struct {
    parent_class: gobj.ObjectClass,
}
LoggerLogLevel :: enum u32 {LOGGER_LOG_NONE = 0, LOGGER_LOG_MINIMAL = 1, LOGGER_LOG_HEADERS = 2, LOGGER_LOG_BODY = 3 }
LoggerFilter :: #type proc "c" (logger: ^Logger, msg: ^Message, user_data: glib.pointer) -> LoggerLogLevel
LoggerPrinter :: #type proc "c" (logger: ^Logger, level: LoggerLogLevel, direction: i8, data: cstring, user_data: glib.pointer)
MultipartInputStream :: struct #packed {}

MultipartInputStreamClass :: struct {
    parent_class: gio.FilterInputStreamClass,
}
accepts_func_ptr_anon_14 :: #type proc "c" (domain: ^AuthDomain, msg: ^ServerMessage, header: cstring) -> cstring
challenge_func_ptr_anon_15 :: #type proc "c" (domain: ^AuthDomain, msg: ^ServerMessage) -> cstring
check_password_func_ptr_anon_16 :: #type proc "c" (domain: ^AuthDomain, msg: ^ServerMessage, username: cstring, password: cstring) -> glib.boolean
AuthDomainClass :: struct {
    parent_class: gobj.ObjectClass,
    accepts: accepts_func_ptr_anon_14,
    challenge: challenge_func_ptr_anon_15,
    check_password: check_password_func_ptr_anon_16,
    padding: [6]glib.pointer,
}

AuthDomainFilter :: #type proc "c" (domain: ^AuthDomain, msg: ^ServerMessage, user_data: glib.pointer) -> glib.boolean
AuthDomainGenericAuthCallback :: #type proc "c" (domain: ^AuthDomain, msg: ^ServerMessage, username: cstring, user_data: glib.pointer) -> glib.boolean
AuthDomainBasic :: struct #packed {}

AuthDomainBasicClass :: struct {
    parent_class: AuthDomainClass,
}
AuthDomainBasicAuthCallback :: #type proc "c" (domain: ^AuthDomain, msg: ^ServerMessage, username: cstring, password: cstring, user_data: glib.pointer) -> glib.boolean
AuthDomainDigest :: struct #packed {}

AuthDomainDigestClass :: struct {
    parent_class: AuthDomainClass,
}
AuthDomainDigestAuthCallback :: #type proc "c" (domain: ^AuthDomain, msg: ^ServerMessage, username: cstring, user_data: glib.pointer) -> cstring
URIComponent :: enum u32 {URI_NONE = 0, URI_SCHEME = 1, URI_USER = 2, URI_PASSWORD = 3, URI_AUTH_PARAMS = 4, URI_HOST = 5, URI_PORT = 6, URI_PATH = 7, URI_QUERY = 8, URI_FRAGMENT = 9 }
WebsocketError :: enum u32 {FAILED = 0, NOT_WEBSOCKET = 1, BAD_HANDSHAKE = 2, BAD_ORIGIN = 3 }
WebsocketConnectionType :: enum u32 {WEBSOCKET_CONNECTION_UNKNOWN = 0, WEBSOCKET_CONNECTION_CLIENT = 1, WEBSOCKET_CONNECTION_SERVER = 2 }
WebsocketDataType :: enum u32 {WEBSOCKET_DATA_TEXT = 1, WEBSOCKET_DATA_BINARY = 2 }
WebsocketCloseCode :: enum u32 {WEBSOCKET_CLOSE_NORMAL = 1000, WEBSOCKET_CLOSE_GOING_AWAY = 1001, WEBSOCKET_CLOSE_PROTOCOL_ERROR = 1002, WEBSOCKET_CLOSE_UNSUPPORTED_DATA = 1003, WEBSOCKET_CLOSE_NO_STATUS = 1005, WEBSOCKET_CLOSE_ABNORMAL = 1006, WEBSOCKET_CLOSE_BAD_DATA = 1007, WEBSOCKET_CLOSE_POLICY_VIOLATION = 1008, WEBSOCKET_CLOSE_TOO_BIG = 1009, WEBSOCKET_CLOSE_NO_EXTENSION = 1010, WEBSOCKET_CLOSE_SERVER_ERROR = 1011, WEBSOCKET_CLOSE_TLS_HANDSHAKE = 1015 }
WebsocketState :: enum u32 {OPEN = 1, CLOSING = 2, CLOSED = 3 }
WebsocketConnectionClass :: struct {
    parent_class: gobj.ObjectClass,
}
request_started_func_ptr_anon_17 :: #type proc "c" (server: ^Server, msg: ^ServerMessage)
request_read_func_ptr_anon_18 :: #type proc "c" (server: ^Server, msg: ^ServerMessage)
request_finished_func_ptr_anon_19 :: #type proc "c" (server: ^Server, msg: ^ServerMessage)
request_aborted_func_ptr_anon_20 :: #type proc "c" (server: ^Server, msg: ^ServerMessage)
ServerClass :: struct {
    parent_class: gobj.ObjectClass,
    request_started: request_started_func_ptr_anon_17,
    request_read: request_read_func_ptr_anon_18,
    request_finished: request_finished_func_ptr_anon_19,
    request_aborted: request_aborted_func_ptr_anon_20,
    padding: [6]glib.pointer,
}

ServerListenOptionsBit :: enum u32 {SERVER_LISTEN_HTTPS = 0, SERVER_LISTEN_IPV4_ONLY = 1, SERVER_LISTEN_IPV6_ONLY = 2}
ServerListenOptions :: bit_set[ServerListenOptionsBit; u32]
ServerCallback :: #type proc "c" (server: ^Server, msg: ^ServerMessage, path: cstring, query: ^glib.HashTable, user_data: glib.pointer)
ServerWebsocketCallback :: #type proc "c" (server: ^Server, msg: ^ServerMessage, path: cstring, connection: ^WebsocketConnection, user_data: glib.pointer)
ServerMessageClass :: struct {
    parent_class: gobj.ObjectClass,
}
request_queued_func_ptr_anon_21 :: #type proc "c" (session: ^Session, msg: ^Message)
request_unqueued_func_ptr_anon_22 :: #type proc "c" (session: ^Session, msg: ^Message)
_soup_reserved1_func_ptr_anon_23 :: #type proc "c" ()
_soup_reserved2_func_ptr_anon_24 :: #type proc "c" ()
_soup_reserved3_func_ptr_anon_25 :: #type proc "c" ()
_soup_reserved4_func_ptr_anon_26 :: #type proc "c" ()
_soup_reserved5_func_ptr_anon_27 :: #type proc "c" ()
_soup_reserved6_func_ptr_anon_28 :: #type proc "c" ()
_soup_reserved7_func_ptr_anon_29 :: #type proc "c" ()
_soup_reserved8_func_ptr_anon_30 :: #type proc "c" ()
SessionClass :: struct {
    parent_class: gobj.ObjectClass,
    request_queued: request_queued_func_ptr_anon_21,
    request_unqueued: request_unqueued_func_ptr_anon_22,
    _soup_reserved1: _soup_reserved1_func_ptr_anon_23,
    _soup_reserved2: _soup_reserved2_func_ptr_anon_24,
    _soup_reserved3: _soup_reserved3_func_ptr_anon_25,
    _soup_reserved4: _soup_reserved4_func_ptr_anon_26,
    _soup_reserved5: _soup_reserved5_func_ptr_anon_27,
    _soup_reserved6: _soup_reserved6_func_ptr_anon_28,
    _soup_reserved7: _soup_reserved7_func_ptr_anon_29,
    _soup_reserved8: _soup_reserved8_func_ptr_anon_30,
}

SessionError :: enum u32 {PARSING = 0, ENCODING = 1, TOO_MANY_REDIRECTS = 2, TOO_MANY_RESTARTS = 3, REDIRECT_NO_LOCATION = 4, REDIRECT_BAD_URI = 5, MESSAGE_ALREADY_IN_QUEUE = 6 }
SessionFeatureInterface :: struct #packed {}

TLDError :: enum u32 {INVALID_HOSTNAME = 0, IS_IP_ADDRESS = 1, NOT_ENOUGH_DOMAINS = 2, NO_BASE_DOMAIN = 3, NO_PSL_DATA = 4 }
configure_func_ptr_anon_31 :: #type proc "c" (extension: ^WebsocketExtension, connection_type: WebsocketConnectionType, params: ^glib.HashTable, error: ^^glib.Error) -> glib.boolean
et_request_params_func_ptr_anon_32 :: #type proc "c" (extension: ^WebsocketExtension) -> cstring
et_response_params_func_ptr_anon_33 :: #type proc "c" (extension: ^WebsocketExtension) -> cstring
process_outgoing_message_func_ptr_anon_34 :: #type proc "c" (extension: ^WebsocketExtension, header: ^glib.uint8, payload: ^glib.Bytes, error: ^^glib.Error) -> ^glib.Bytes
process_incoming_message_func_ptr_anon_35 :: #type proc "c" (extension: ^WebsocketExtension, header: ^glib.uint8, payload: ^glib.Bytes, error: ^^glib.Error) -> ^glib.Bytes
WebsocketExtensionClass :: struct {
    parent_class: gobj.ObjectClass,
    name: cstring,
    configure: configure_func_ptr_anon_31,
    get_request_params: et_request_params_func_ptr_anon_32,
    get_response_params: et_response_params_func_ptr_anon_33,
    process_outgoing_message: process_outgoing_message_func_ptr_anon_34,
    process_incoming_message: process_incoming_message_func_ptr_anon_35,
    padding: [6]glib.pointer,
}

WebsocketExtensionDeflate :: struct #packed {}

WebsocketExtensionDeflateClass :: struct {
    parent_class: WebsocketExtensionClass,
}
WebsocketExtensionManager :: struct #packed {}

WebsocketExtensionManagerClass :: struct {
    parent_class: gobj.ObjectClass,
}

@(default_calling_convention = "c")
foreign soup_runic {
    @(link_name = "soup_get_major_version")
    get_major_version :: proc() -> glib.uint_ ---

    @(link_name = "soup_get_minor_version")
    get_minor_version :: proc() -> glib.uint_ ---

    @(link_name = "soup_get_micro_version")
    get_micro_version :: proc() -> glib.uint_ ---

    @(link_name = "soup_check_version")
    check_version :: proc(major: glib.uint_, minor: glib.uint_, micro: glib.uint_) -> glib.boolean ---

    @(link_name = "soup_status_get_phrase")
    status_get_phrase :: proc(status_code: glib.uint_) -> cstring ---

    @(link_name = "soup_message_body_get_type")
    message_body_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_message_body_new")
    message_body_new :: proc() -> ^MessageBody ---

    @(link_name = "soup_message_body_ref")
    message_body_ref :: proc(body: ^MessageBody) -> ^MessageBody ---

    @(link_name = "soup_message_body_unref")
    message_body_unref :: proc(body: ^MessageBody) ---

    @(link_name = "soup_message_body_set_accumulate")
    message_body_set_accumulate :: proc(body: ^MessageBody, accumulate: glib.boolean) ---

    @(link_name = "soup_message_body_get_accumulate")
    message_body_get_accumulate :: proc(body: ^MessageBody) -> glib.boolean ---

    @(link_name = "soup_message_body_append")
    message_body_append :: proc(body: ^MessageBody, use: MemoryUse, data: glib.constpointer, length: glib.size) ---

    @(link_name = "soup_message_body_append_take")
    message_body_append_take :: proc(body: ^MessageBody, data: ^glib.uchar, length: glib.size) ---

    @(link_name = "soup_message_body_append_bytes")
    message_body_append_bytes :: proc(body: ^MessageBody, buffer: ^glib.Bytes) ---

    @(link_name = "soup_message_body_truncate")
    message_body_truncate :: proc(body: ^MessageBody) ---

    @(link_name = "soup_message_body_complete")
    message_body_complete :: proc(body: ^MessageBody) ---

    @(link_name = "soup_message_body_flatten")
    message_body_flatten :: proc(body: ^MessageBody) -> ^glib.Bytes ---

    @(link_name = "soup_message_body_get_chunk")
    message_body_get_chunk :: proc(body: ^MessageBody, offset_p: glib.offset) -> ^glib.Bytes ---

    @(link_name = "soup_message_body_got_chunk")
    message_body_got_chunk :: proc(body: ^MessageBody, chunk: ^glib.Bytes) ---

    @(link_name = "soup_message_body_wrote_chunk")
    message_body_wrote_chunk :: proc(body: ^MessageBody, chunk: ^glib.Bytes) ---

    @(link_name = "soup_message_headers_get_type")
    message_headers_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_message_headers_new")
    message_headers_new :: proc(type: MessageHeadersType) -> ^MessageHeaders ---

    @(link_name = "soup_message_headers_ref")
    message_headers_ref :: proc(hdrs: ^MessageHeaders) -> ^MessageHeaders ---

    @(link_name = "soup_message_headers_unref")
    message_headers_unref :: proc(hdrs: ^MessageHeaders) ---

    @(link_name = "soup_message_headers_append")
    message_headers_append :: proc(hdrs: ^MessageHeaders, name: cstring, value: cstring) ---

    @(link_name = "soup_message_headers_replace")
    message_headers_replace :: proc(hdrs: ^MessageHeaders, name: cstring, value: cstring) ---

    @(link_name = "soup_message_headers_remove")
    message_headers_remove :: proc(hdrs: ^MessageHeaders, name: cstring) ---

    @(link_name = "soup_message_headers_clear")
    message_headers_clear :: proc(hdrs: ^MessageHeaders) ---

    @(link_name = "soup_message_headers_clean_connection_headers")
    message_headers_clean_connection_headers :: proc(hdrs: ^MessageHeaders) ---

    @(link_name = "soup_message_headers_get_one")
    message_headers_get_one :: proc(hdrs: ^MessageHeaders, name: cstring) -> cstring ---

    @(link_name = "soup_message_headers_get_list")
    message_headers_get_list :: proc(hdrs: ^MessageHeaders, name: cstring) -> cstring ---

    @(link_name = "soup_message_headers_header_contains")
    message_headers_header_contains :: proc(hdrs: ^MessageHeaders, name: cstring, token: cstring) -> glib.boolean ---

    @(link_name = "soup_message_headers_header_equals")
    message_headers_header_equals :: proc(hdrs: ^MessageHeaders, name: cstring, value: cstring) -> glib.boolean ---

    @(link_name = "soup_message_headers_foreach")
    message_headers_foreach :: proc(hdrs: ^MessageHeaders, func: MessageHeadersForeachFunc, user_data: glib.pointer) ---

    @(link_name = "soup_message_headers_get_headers_type")
    message_headers_get_headers_type :: proc(hdrs: ^MessageHeaders) -> MessageHeadersType ---

    @(link_name = "soup_message_headers_iter_init")
    message_headers_iter_init :: proc(iter: ^MessageHeadersIter, hdrs: ^MessageHeaders) ---

    @(link_name = "soup_message_headers_iter_next")
    message_headers_iter_next :: proc(iter: ^MessageHeadersIter, name: ^cstring, value: ^cstring) -> glib.boolean ---

    @(link_name = "soup_message_headers_get_encoding")
    message_headers_get_encoding :: proc(hdrs: ^MessageHeaders) -> Encoding ---

    @(link_name = "soup_message_headers_set_encoding")
    message_headers_set_encoding :: proc(hdrs: ^MessageHeaders, encoding: Encoding) ---

    @(link_name = "soup_message_headers_get_content_length")
    message_headers_get_content_length :: proc(hdrs: ^MessageHeaders) -> glib.offset ---

    @(link_name = "soup_message_headers_set_content_length")
    message_headers_set_content_length :: proc(hdrs: ^MessageHeaders, content_length: glib.offset) ---

    @(link_name = "soup_message_headers_get_expectations")
    message_headers_get_expectations :: proc(hdrs: ^MessageHeaders) -> Expectation ---

    @(link_name = "soup_message_headers_set_expectations")
    message_headers_set_expectations :: proc(hdrs: ^MessageHeaders, expectations: Expectation) ---

    @(link_name = "soup_message_headers_get_ranges")
    message_headers_get_ranges :: proc(hdrs: ^MessageHeaders, total_length: glib.offset, ranges: [^]^Range, length: ^i32) -> glib.boolean ---

    @(link_name = "soup_message_headers_free_ranges")
    message_headers_free_ranges :: proc(hdrs: ^MessageHeaders, ranges: [^]Range) ---

    @(link_name = "soup_message_headers_set_ranges")
    message_headers_set_ranges :: proc(hdrs: ^MessageHeaders, ranges: [^]Range, length: i32) ---

    @(link_name = "soup_message_headers_set_range")
    message_headers_set_range :: proc(hdrs: ^MessageHeaders, start: glib.offset, end: glib.offset) ---

    @(link_name = "soup_message_headers_get_content_range")
    message_headers_get_content_range :: proc(hdrs: ^MessageHeaders, start: ^glib.offset, end: ^glib.offset, total_length: ^glib.offset) -> glib.boolean ---

    @(link_name = "soup_message_headers_set_content_range")
    message_headers_set_content_range :: proc(hdrs: ^MessageHeaders, start: glib.offset, end: glib.offset, total_length: glib.offset) ---

    @(link_name = "soup_message_headers_get_content_type")
    message_headers_get_content_type :: proc(hdrs: ^MessageHeaders, params: ^^glib.HashTable) -> cstring ---

    @(link_name = "soup_message_headers_set_content_type")
    message_headers_set_content_type :: proc(hdrs: ^MessageHeaders, content_type: cstring, params: ^glib.HashTable) ---

    @(link_name = "soup_message_headers_get_content_disposition")
    message_headers_get_content_disposition :: proc(hdrs: ^MessageHeaders, disposition: ^cstring, params: ^^glib.HashTable) -> glib.boolean ---

    @(link_name = "soup_message_headers_set_content_disposition")
    message_headers_set_content_disposition :: proc(hdrs: ^MessageHeaders, disposition: cstring, params: ^glib.HashTable) ---

    @(link_name = "_SOUP_METHOD_OPTIONS")
    _SOUP_METHOD_OPTIONS: glib.pointer

    @(link_name = "_SOUP_METHOD_GET")
    _SOUP_METHOD_GET: glib.pointer

    @(link_name = "_SOUP_METHOD_HEAD")
    _SOUP_METHOD_HEAD: glib.pointer

    @(link_name = "_SOUP_METHOD_POST")
    _SOUP_METHOD_POST: glib.pointer

    @(link_name = "_SOUP_METHOD_PUT")
    _SOUP_METHOD_PUT: glib.pointer

    @(link_name = "_SOUP_METHOD_DELETE")
    _SOUP_METHOD_DELETE: glib.pointer

    @(link_name = "_SOUP_METHOD_TRACE")
    _SOUP_METHOD_TRACE: glib.pointer

    @(link_name = "_SOUP_METHOD_CONNECT")
    _SOUP_METHOD_CONNECT: glib.pointer

    @(link_name = "_SOUP_METHOD_PROPFIND")
    _SOUP_METHOD_PROPFIND: glib.pointer

    @(link_name = "_SOUP_METHOD_PROPPATCH")
    _SOUP_METHOD_PROPPATCH: glib.pointer

    @(link_name = "_SOUP_METHOD_MKCOL")
    _SOUP_METHOD_MKCOL: glib.pointer

    @(link_name = "_SOUP_METHOD_COPY")
    _SOUP_METHOD_COPY: glib.pointer

    @(link_name = "_SOUP_METHOD_MOVE")
    _SOUP_METHOD_MOVE: glib.pointer

    @(link_name = "_SOUP_METHOD_LOCK")
    _SOUP_METHOD_LOCK: glib.pointer

    @(link_name = "_SOUP_METHOD_UNLOCK")
    _SOUP_METHOD_UNLOCK: glib.pointer

    @(link_name = "soup_multipart_get_type")
    multipart_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_multipart_new")
    multipart_new :: proc(mime_type: cstring) -> ^Multipart ---

    @(link_name = "soup_multipart_new_from_message")
    multipart_new_from_message :: proc(headers: ^MessageHeaders, body: ^glib.Bytes) -> ^Multipart ---

    @(link_name = "soup_multipart_get_length")
    multipart_get_length :: proc(multipart: ^Multipart) -> i32 ---

    @(link_name = "soup_multipart_get_part")
    multipart_get_part :: proc(multipart: ^Multipart, part: i32, headers: ^^MessageHeaders, body: ^^glib.Bytes) -> glib.boolean ---

    @(link_name = "soup_multipart_append_part")
    multipart_append_part :: proc(multipart: ^Multipart, headers: ^MessageHeaders, body: ^glib.Bytes) ---

    @(link_name = "soup_multipart_append_form_string")
    multipart_append_form_string :: proc(multipart: ^Multipart, control_name: cstring, data: cstring) ---

    @(link_name = "soup_multipart_append_form_file")
    multipart_append_form_file :: proc(multipart: ^Multipart, control_name: cstring, filename: cstring, content_type: cstring, body: ^glib.Bytes) ---

    @(link_name = "soup_multipart_to_message")
    multipart_to_message :: proc(multipart: ^Multipart, dest_headers: ^MessageHeaders, dest_body: ^^glib.Bytes) ---

    @(link_name = "soup_multipart_free")
    multipart_free :: proc(multipart: ^Multipart) ---

    @(link_name = "soup_message_get_type")
    message_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_message_new")
    message_new :: proc(method: cstring, uri_string: cstring) -> ^Message ---

    @(link_name = "soup_message_new_from_uri")
    message_new_from_uri :: proc(method: cstring, uri: ^glib.Uri) -> ^Message ---

    @(link_name = "soup_message_new_options_ping")
    message_new_options_ping :: proc(base_uri: ^glib.Uri) -> ^Message ---

    @(link_name = "soup_message_new_from_encoded_form")
    message_new_from_encoded_form :: proc(method: cstring, uri_string: cstring, encoded_form: cstring) -> ^Message ---

    @(link_name = "soup_message_new_from_multipart")
    message_new_from_multipart :: proc(uri_string: cstring, multipart: ^Multipart) -> ^Message ---

    @(link_name = "soup_message_set_request_body")
    message_set_request_body :: proc(msg: ^Message, content_type: cstring, stream: ^gio.InputStream, content_length: glib.ssize) ---

    @(link_name = "soup_message_set_request_body_from_bytes")
    message_set_request_body_from_bytes :: proc(msg: ^Message, content_type: cstring, bytes: ^glib.Bytes) ---

    @(link_name = "soup_message_get_http_version")
    message_get_http_version :: proc(msg: ^Message) -> HTTPVersion ---

    @(link_name = "soup_message_is_keepalive")
    message_is_keepalive :: proc(msg: ^Message) -> glib.boolean ---

    @(link_name = "soup_message_get_uri")
    message_get_uri :: proc(msg: ^Message) -> ^glib.Uri ---

    @(link_name = "soup_message_set_uri")
    message_set_uri :: proc(msg: ^Message, uri: ^glib.Uri) ---

    @(link_name = "soup_message_get_first_party")
    message_get_first_party :: proc(msg: ^Message) -> ^glib.Uri ---

    @(link_name = "soup_message_set_first_party")
    message_set_first_party :: proc(msg: ^Message, first_party: ^glib.Uri) ---

    @(link_name = "soup_message_get_site_for_cookies")
    message_get_site_for_cookies :: proc(msg: ^Message) -> ^glib.Uri ---

    @(link_name = "soup_message_set_site_for_cookies")
    message_set_site_for_cookies :: proc(msg: ^Message, site_for_cookies: ^glib.Uri) ---

    @(link_name = "soup_message_set_is_top_level_navigation")
    message_set_is_top_level_navigation :: proc(msg: ^Message, is_top_level_navigation: glib.boolean) ---

    @(link_name = "soup_message_get_is_top_level_navigation")
    message_get_is_top_level_navigation :: proc(msg: ^Message) -> glib.boolean ---

    @(link_name = "soup_message_set_flags")
    message_set_flags :: proc(msg: ^Message, flags: MessageFlags) ---

    @(link_name = "soup_message_get_flags")
    message_get_flags :: proc(msg: ^Message) -> MessageFlags ---

    @(link_name = "soup_message_add_flags")
    message_add_flags :: proc(msg: ^Message, flags: MessageFlags) ---

    @(link_name = "soup_message_remove_flags")
    message_remove_flags :: proc(msg: ^Message, flags: MessageFlags) ---

    @(link_name = "soup_message_query_flags")
    message_query_flags :: proc(msg: ^Message, flags: MessageFlags) -> glib.boolean ---

    @(link_name = "soup_message_get_tls_peer_certificate")
    message_get_tls_peer_certificate :: proc(msg: ^Message) -> ^gio.TlsCertificate ---

    @(link_name = "soup_message_get_tls_peer_certificate_errors")
    message_get_tls_peer_certificate_errors :: proc(msg: ^Message) -> gio.TlsCertificateFlags ---

    @(link_name = "soup_message_get_tls_protocol_version")
    message_get_tls_protocol_version :: proc(msg: ^Message) -> gio.TlsProtocolVersion ---

    @(link_name = "soup_message_get_tls_ciphersuite_name")
    message_get_tls_ciphersuite_name :: proc(msg: ^Message) -> cstring ---

    @(link_name = "soup_message_set_tls_client_certificate")
    message_set_tls_client_certificate :: proc(msg: ^Message, certificate: ^gio.TlsCertificate) ---

    @(link_name = "soup_message_tls_client_certificate_password_request_complete")
    message_tls_client_certificate_password_request_complete :: proc(msg: ^Message) ---

    @(link_name = "soup_message_add_header_handler")
    message_add_header_handler :: proc(msg: ^Message, signal: cstring, header: cstring, callback: gobj.Callback, user_data: glib.pointer) -> glib.uint_ ---

    @(link_name = "soup_message_add_status_code_handler")
    message_add_status_code_handler :: proc(msg: ^Message, signal: cstring, status_code: glib.uint_, callback: gobj.Callback, user_data: glib.pointer) -> glib.uint_ ---

    @(link_name = "soup_message_disable_feature")
    message_disable_feature :: proc(msg: ^Message, feature_type: gobj.Type) ---

    @(link_name = "soup_message_is_feature_disabled")
    message_is_feature_disabled :: proc(msg: ^Message, feature_type: gobj.Type) -> glib.boolean ---

    @(link_name = "soup_message_set_priority")
    message_set_priority :: proc(msg: ^Message, priority: MessagePriority) ---

    @(link_name = "soup_message_get_priority")
    message_get_priority :: proc(msg: ^Message) -> MessagePriority ---

    @(link_name = "soup_message_get_method")
    message_get_method :: proc(msg: ^Message) -> cstring ---

    @(link_name = "soup_message_set_method")
    message_set_method :: proc(msg: ^Message, method: cstring) ---

    @(link_name = "soup_message_get_status")
    message_get_status :: proc(msg: ^Message) -> Status ---

    @(link_name = "soup_message_get_reason_phrase")
    message_get_reason_phrase :: proc(msg: ^Message) -> cstring ---

    @(link_name = "soup_message_get_request_headers")
    message_get_request_headers :: proc(msg: ^Message) -> ^MessageHeaders ---

    @(link_name = "soup_message_get_response_headers")
    message_get_response_headers :: proc(msg: ^Message) -> ^MessageHeaders ---

    @(link_name = "soup_message_get_is_options_ping")
    message_get_is_options_ping :: proc(msg: ^Message) -> glib.boolean ---

    @(link_name = "soup_message_set_is_options_ping")
    message_set_is_options_ping :: proc(msg: ^Message, is_options_ping: glib.boolean) ---

    @(link_name = "soup_message_get_connection_id")
    message_get_connection_id :: proc(msg: ^Message) -> glib.uint64 ---

    @(link_name = "soup_message_get_remote_address")
    message_get_remote_address :: proc(msg: ^Message) -> ^gio.SocketAddress ---

    @(link_name = "soup_message_get_metrics")
    message_get_metrics :: proc(msg: ^Message) -> ^MessageMetrics ---

    @(link_name = "soup_message_set_force_http1")
    message_set_force_http1 :: proc(msg: ^Message, value: glib.boolean) ---

    @(link_name = "soup_message_get_force_http1")
    message_get_force_http1 :: proc(msg: ^Message) -> glib.boolean ---

    @(link_name = "soup_headers_parse")
    headers_parse :: proc(str: cstring, len: i32, dest: ^MessageHeaders) -> glib.boolean ---

    @(link_name = "soup_headers_parse_request")
    headers_parse_request :: proc(str: cstring, len: i32, req_headers: ^MessageHeaders, req_method: ^cstring, req_path: ^cstring, ver: ^HTTPVersion) -> glib.uint_ ---

    @(link_name = "soup_headers_parse_status_line")
    headers_parse_status_line :: proc(status_line: cstring, ver: ^HTTPVersion, status_code: ^glib.uint_, reason_phrase: ^cstring) -> glib.boolean ---

    @(link_name = "soup_headers_parse_response")
    headers_parse_response :: proc(str: cstring, len: i32, headers: ^MessageHeaders, ver: ^HTTPVersion, status_code: ^glib.uint_, reason_phrase: ^cstring) -> glib.boolean ---

    @(link_name = "soup_header_parse_list")
    header_parse_list :: proc(header: cstring) -> ^glib.SList ---

    @(link_name = "soup_header_parse_quality_list")
    header_parse_quality_list :: proc(header: cstring, unacceptable: ^^glib.SList) -> ^glib.SList ---

    @(link_name = "soup_header_free_list")
    header_free_list :: proc(list: ^glib.SList) ---

    @(link_name = "soup_header_contains")
    header_contains :: proc(header: cstring, token: cstring) -> glib.boolean ---

    @(link_name = "soup_header_parse_param_list")
    header_parse_param_list :: proc(header: cstring) -> ^glib.HashTable ---

    @(link_name = "soup_header_parse_semi_param_list")
    header_parse_semi_param_list :: proc(header: cstring) -> ^glib.HashTable ---

    @(link_name = "soup_header_parse_param_list_strict")
    header_parse_param_list_strict :: proc(header: cstring) -> ^glib.HashTable ---

    @(link_name = "soup_header_parse_semi_param_list_strict")
    header_parse_semi_param_list_strict :: proc(header: cstring) -> ^glib.HashTable ---

    @(link_name = "soup_header_free_param_list")
    header_free_param_list :: proc(param_list: ^glib.HashTable) ---

    @(link_name = "soup_header_g_string_append_param")
    header_g_string_append_param :: proc(string_p: ^glib.String, name: cstring, value: cstring) ---

    @(link_name = "soup_header_g_string_append_param_quoted")
    header_g_string_append_param_quoted :: proc(string_p: ^glib.String, name: cstring, value: cstring) ---

    @(link_name = "soup_auth_get_type")
    auth_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_auth_new")
    auth_new :: proc(type: gobj.Type, msg: ^Message, auth_header: cstring) -> ^Auth ---

    @(link_name = "soup_auth_update")
    auth_update :: proc(auth: ^Auth, msg: ^Message, auth_header: cstring) -> glib.boolean ---

    @(link_name = "soup_auth_is_for_proxy")
    auth_is_for_proxy :: proc(auth: ^Auth) -> glib.boolean ---

    @(link_name = "soup_auth_get_scheme_name")
    auth_get_scheme_name :: proc(auth: ^Auth) -> cstring ---

    @(link_name = "soup_auth_get_authority")
    auth_get_authority :: proc(auth: ^Auth) -> cstring ---

    @(link_name = "soup_auth_get_realm")
    auth_get_realm :: proc(auth: ^Auth) -> cstring ---

    @(link_name = "soup_auth_get_info")
    auth_get_info :: proc(auth: ^Auth) -> cstring ---

    @(link_name = "soup_auth_authenticate")
    auth_authenticate :: proc(auth: ^Auth, username: cstring, password: cstring) ---

    @(link_name = "soup_auth_cancel")
    auth_cancel :: proc(auth: ^Auth) ---

    @(link_name = "soup_auth_is_authenticated")
    auth_is_authenticated :: proc(auth: ^Auth) -> glib.boolean ---

    @(link_name = "soup_auth_is_cancelled")
    auth_is_cancelled :: proc(auth: ^Auth) -> glib.boolean ---

    @(link_name = "soup_auth_is_ready")
    auth_is_ready :: proc(auth: ^Auth, msg: ^Message) -> glib.boolean ---

    @(link_name = "soup_auth_can_authenticate")
    auth_can_authenticate :: proc(auth: ^Auth) -> glib.boolean ---

    @(link_name = "soup_auth_get_authorization")
    auth_get_authorization :: proc(auth: ^Auth, msg: ^Message) -> cstring ---

    @(link_name = "soup_auth_get_protection_space")
    auth_get_protection_space :: proc(auth: ^Auth, source_uri: ^glib.Uri) -> ^glib.SList ---

    @(link_name = "soup_auth_free_protection_space")
    auth_free_protection_space :: proc(auth: ^Auth, space: ^glib.SList) ---

    @(link_name = "soup_auth_negotiate_supported")
    auth_negotiate_supported :: proc() -> glib.boolean ---

    @(link_name = "soup_auth_basic_get_type")
    auth_basic_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_auth_digest_get_type")
    auth_digest_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_auth_ntlm_get_type")
    auth_ntlm_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_auth_negotiate_get_type")
    auth_negotiate_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_auth_manager_get_type")
    auth_manager_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_auth_manager_use_auth")
    auth_manager_use_auth :: proc(manager: ^AuthManager, uri: ^glib.Uri, auth: ^Auth) ---

    @(link_name = "soup_auth_manager_clear_cached_credentials")
    auth_manager_clear_cached_credentials :: proc(manager: ^AuthManager) ---

    @(link_name = "soup_cache_get_type")
    cache_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_cache_new")
    cache_new :: proc(cache_dir: cstring, cache_type: CacheType) -> ^Cache ---

    @(link_name = "soup_cache_flush")
    cache_flush :: proc(cache: ^Cache) ---

    @(link_name = "soup_cache_clear")
    cache_clear :: proc(cache: ^Cache) ---

    @(link_name = "soup_cache_dump")
    cache_dump :: proc(cache: ^Cache) ---

    @(link_name = "soup_cache_load")
    cache_load :: proc(cache: ^Cache) ---

    @(link_name = "soup_cache_set_max_size")
    cache_set_max_size :: proc(cache: ^Cache, max_size: glib.uint_) ---

    @(link_name = "soup_cache_get_max_size")
    cache_get_max_size :: proc(cache: ^Cache) -> glib.uint_ ---

    @(link_name = "soup_content_decoder_get_type")
    content_decoder_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_content_sniffer_get_type")
    content_sniffer_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_content_sniffer_new")
    content_sniffer_new :: proc() -> ^ContentSniffer ---

    @(link_name = "soup_content_sniffer_sniff")
    content_sniffer_sniff :: proc(sniffer: ^ContentSniffer, msg: ^Message, buffer: ^glib.Bytes, params: ^^glib.HashTable) -> cstring ---

    @(link_name = "soup_cookie_get_type")
    cookie_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_cookie_new")
    cookie_new :: proc(name: cstring, value: cstring, domain: cstring, path: cstring, max_age: i32) -> ^Cookie ---

    @(link_name = "soup_cookie_parse")
    cookie_parse :: proc(header: cstring, origin: ^glib.Uri) -> ^Cookie ---

    @(link_name = "soup_cookie_copy")
    cookie_copy :: proc(cookie: ^Cookie) -> ^Cookie ---

    @(link_name = "soup_cookie_get_name")
    cookie_get_name :: proc(cookie: ^Cookie) -> cstring ---

    @(link_name = "soup_cookie_set_name")
    cookie_set_name :: proc(cookie: ^Cookie, name: cstring) ---

    @(link_name = "soup_cookie_get_value")
    cookie_get_value :: proc(cookie: ^Cookie) -> cstring ---

    @(link_name = "soup_cookie_set_value")
    cookie_set_value :: proc(cookie: ^Cookie, value: cstring) ---

    @(link_name = "soup_cookie_get_domain")
    cookie_get_domain :: proc(cookie: ^Cookie) -> cstring ---

    @(link_name = "soup_cookie_set_domain")
    cookie_set_domain :: proc(cookie: ^Cookie, domain: cstring) ---

    @(link_name = "soup_cookie_get_path")
    cookie_get_path :: proc(cookie: ^Cookie) -> cstring ---

    @(link_name = "soup_cookie_set_path")
    cookie_set_path :: proc(cookie: ^Cookie, path: cstring) ---

    @(link_name = "soup_cookie_set_max_age")
    cookie_set_max_age :: proc(cookie: ^Cookie, max_age: i32) ---

    @(link_name = "soup_cookie_get_expires")
    cookie_get_expires :: proc(cookie: ^Cookie) -> ^glib.DateTime ---

    @(link_name = "soup_cookie_set_expires")
    cookie_set_expires :: proc(cookie: ^Cookie, expires: ^glib.DateTime) ---

    @(link_name = "soup_cookie_get_secure")
    cookie_get_secure :: proc(cookie: ^Cookie) -> glib.boolean ---

    @(link_name = "soup_cookie_set_secure")
    cookie_set_secure :: proc(cookie: ^Cookie, secure: glib.boolean) ---

    @(link_name = "soup_cookie_get_http_only")
    cookie_get_http_only :: proc(cookie: ^Cookie) -> glib.boolean ---

    @(link_name = "soup_cookie_set_http_only")
    cookie_set_http_only :: proc(cookie: ^Cookie, http_only: glib.boolean) ---

    @(link_name = "soup_cookie_set_same_site_policy")
    cookie_set_same_site_policy :: proc(cookie: ^Cookie, policy: SameSitePolicy) ---

    @(link_name = "soup_cookie_get_same_site_policy")
    cookie_get_same_site_policy :: proc(cookie: ^Cookie) -> SameSitePolicy ---

    @(link_name = "soup_cookie_to_set_cookie_header")
    cookie_to_set_cookie_header :: proc(cookie: ^Cookie) -> cstring ---

    @(link_name = "soup_cookie_to_cookie_header")
    cookie_to_cookie_header :: proc(cookie: ^Cookie) -> cstring ---

    @(link_name = "soup_cookie_applies_to_uri")
    cookie_applies_to_uri :: proc(cookie: ^Cookie, uri: ^glib.Uri) -> glib.boolean ---

    @(link_name = "soup_cookie_equal")
    cookie_equal :: proc(cookie1: ^Cookie, cookie2: ^Cookie) -> glib.boolean ---

    @(link_name = "soup_cookie_free")
    cookie_free :: proc(cookie: ^Cookie) ---

    @(link_name = "soup_cookies_from_response")
    cookies_from_response :: proc(msg: ^Message) -> ^glib.SList ---

    @(link_name = "soup_cookies_from_request")
    cookies_from_request :: proc(msg: ^Message) -> ^glib.SList ---

    @(link_name = "soup_cookies_to_response")
    cookies_to_response :: proc(cookies: ^glib.SList, msg: ^Message) ---

    @(link_name = "soup_cookies_to_request")
    cookies_to_request :: proc(cookies: ^glib.SList, msg: ^Message) ---

    @(link_name = "soup_cookies_free")
    cookies_free :: proc(cookies: ^glib.SList) ---

    @(link_name = "soup_cookies_to_cookie_header")
    cookies_to_cookie_header :: proc(cookies: ^glib.SList) -> cstring ---

    @(link_name = "soup_cookie_domain_matches")
    cookie_domain_matches :: proc(cookie: ^Cookie, host: cstring) -> glib.boolean ---

    @(link_name = "soup_cookie_jar_get_type")
    cookie_jar_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_cookie_jar_new")
    cookie_jar_new :: proc() -> ^CookieJar ---

    @(link_name = "soup_cookie_jar_get_cookies")
    cookie_jar_get_cookies :: proc(jar: ^CookieJar, uri: ^glib.Uri, for_http: glib.boolean) -> cstring ---

    @(link_name = "soup_cookie_jar_get_cookie_list")
    cookie_jar_get_cookie_list :: proc(jar: ^CookieJar, uri: ^glib.Uri, for_http: glib.boolean) -> ^glib.SList ---

    @(link_name = "soup_cookie_jar_get_cookie_list_with_same_site_info")
    cookie_jar_get_cookie_list_with_same_site_info :: proc(jar: ^CookieJar, uri: ^glib.Uri, top_level: ^glib.Uri, site_for_cookies: ^glib.Uri, for_http: glib.boolean, is_safe_method: glib.boolean, is_top_level_navigation: glib.boolean) -> ^glib.SList ---

    @(link_name = "soup_cookie_jar_set_cookie")
    cookie_jar_set_cookie :: proc(jar: ^CookieJar, uri: ^glib.Uri, cookie: cstring) ---

    @(link_name = "soup_cookie_jar_set_cookie_with_first_party")
    cookie_jar_set_cookie_with_first_party :: proc(jar: ^CookieJar, uri: ^glib.Uri, first_party: ^glib.Uri, cookie: cstring) ---

    @(link_name = "soup_cookie_jar_add_cookie")
    cookie_jar_add_cookie :: proc(jar: ^CookieJar, cookie: ^Cookie) ---

    @(link_name = "soup_cookie_jar_add_cookie_with_first_party")
    cookie_jar_add_cookie_with_first_party :: proc(jar: ^CookieJar, first_party: ^glib.Uri, cookie: ^Cookie) ---

    @(link_name = "soup_cookie_jar_add_cookie_full")
    cookie_jar_add_cookie_full :: proc(jar: ^CookieJar, cookie: ^Cookie, uri: ^glib.Uri, first_party: ^glib.Uri) ---

    @(link_name = "soup_cookie_jar_delete_cookie")
    cookie_jar_delete_cookie :: proc(jar: ^CookieJar, cookie: ^Cookie) ---

    @(link_name = "soup_cookie_jar_all_cookies")
    cookie_jar_all_cookies :: proc(jar: ^CookieJar) -> ^glib.SList ---

    @(link_name = "soup_cookie_jar_set_accept_policy")
    cookie_jar_set_accept_policy :: proc(jar: ^CookieJar, policy: CookieJarAcceptPolicy) ---

    @(link_name = "soup_cookie_jar_get_accept_policy")
    cookie_jar_get_accept_policy :: proc(jar: ^CookieJar) -> CookieJarAcceptPolicy ---

    @(link_name = "soup_cookie_jar_is_persistent")
    cookie_jar_is_persistent :: proc(jar: ^CookieJar) -> glib.boolean ---

    @(link_name = "soup_cookie_jar_db_get_type")
    cookie_jar_db_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_cookie_jar_db_new")
    cookie_jar_db_new :: proc(filename: cstring, read_only: glib.boolean) -> ^CookieJar ---

    @(link_name = "soup_cookie_jar_text_get_type")
    cookie_jar_text_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_cookie_jar_text_new")
    cookie_jar_text_new :: proc(filename: cstring, read_only: glib.boolean) -> ^CookieJar ---

    @(link_name = "soup_date_time_to_string")
    date_time_to_string :: proc(date: ^glib.DateTime, format: DateFormat) -> cstring ---

    @(link_name = "soup_date_time_new_from_http_string")
    date_time_new_from_http_string :: proc(date_string: cstring) -> ^glib.DateTime ---

    @(link_name = "soup_cacheability_get_type")
    cacheability_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_cache_type_get_type")
    cache_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_cookie_jar_accept_policy_get_type")
    cookie_jar_accept_policy_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_same_site_policy_get_type")
    same_site_policy_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_memory_use_get_type")
    memory_use_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_server_listen_options_get_type")
    server_listen_options_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_date_format_get_type")
    date_format_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_logger_log_level_get_type")
    logger_log_level_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_message_headers_type_get_type")
    message_headers_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_encoding_get_type")
    encoding_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_expectation_get_type")
    expectation_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_message_flags_get_type")
    message_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_message_priority_get_type")
    message_priority_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_session_error_get_type")
    session_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_status_get_type")
    status_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_http_version_get_type")
    http_version_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_tld_error_get_type")
    tld_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_uri_component_get_type")
    uri_component_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_websocket_error_get_type")
    websocket_error_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_websocket_connection_type_get_type")
    websocket_connection_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_websocket_data_type_get_type")
    websocket_data_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_websocket_close_code_get_type")
    websocket_close_code_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_websocket_state_get_type")
    websocket_state_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_form_decode")
    form_decode :: proc(encoded_form: cstring) -> ^glib.HashTable ---

    @(link_name = "soup_form_decode_multipart")
    form_decode_multipart :: proc(multipart: ^Multipart, file_control_name: cstring, filename: ^cstring, content_type: ^cstring, file: ^^glib.Bytes) -> ^glib.HashTable ---

    @(link_name = "soup_form_encode")
    form_encode :: proc(first_field: cstring, #c_vararg var_args: ..any) -> cstring ---

    @(link_name = "soup_form_encode_hash")
    form_encode_hash :: proc(form_data_set: ^glib.HashTable) -> cstring ---

    @(link_name = "soup_form_encode_datalist")
    form_encode_datalist :: proc(form_data_set: ^^glib.Data) -> cstring ---

    // form_encode_valist skipped: its trailing va_list is dropped by runic, so it would be a wrong #c_vararg ..any call

    @(link_name = "soup_hsts_enforcer_get_type")
    hsts_enforcer_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_hsts_enforcer_new")
    hsts_enforcer_new :: proc() -> ^HSTSEnforcer ---

    @(link_name = "soup_hsts_enforcer_is_persistent")
    hsts_enforcer_is_persistent :: proc(hsts_enforcer: ^HSTSEnforcer) -> glib.boolean ---

    @(link_name = "soup_hsts_enforcer_has_valid_policy")
    hsts_enforcer_has_valid_policy :: proc(hsts_enforcer: ^HSTSEnforcer, domain: cstring) -> glib.boolean ---

    @(link_name = "soup_hsts_enforcer_set_session_policy")
    hsts_enforcer_set_session_policy :: proc(hsts_enforcer: ^HSTSEnforcer, domain: cstring, include_subdomains: glib.boolean) ---

    @(link_name = "soup_hsts_enforcer_set_policy")
    hsts_enforcer_set_policy :: proc(hsts_enforcer: ^HSTSEnforcer, policy: ^HSTSPolicy) ---

    @(link_name = "soup_hsts_enforcer_get_domains")
    hsts_enforcer_get_domains :: proc(hsts_enforcer: ^HSTSEnforcer, session_policies: glib.boolean) -> ^glib.List ---

    @(link_name = "soup_hsts_enforcer_get_policies")
    hsts_enforcer_get_policies :: proc(hsts_enforcer: ^HSTSEnforcer, session_policies: glib.boolean) -> ^glib.List ---

    @(link_name = "soup_hsts_enforcer_db_get_type")
    hsts_enforcer_db_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_hsts_enforcer_db_new")
    hsts_enforcer_db_new :: proc(filename: cstring) -> ^HSTSEnforcer ---

    @(link_name = "soup_hsts_policy_get_type")
    hsts_policy_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_hsts_policy_new")
    hsts_policy_new :: proc(domain: cstring, max_age: u64, include_subdomains: glib.boolean) -> ^HSTSPolicy ---

    @(link_name = "soup_hsts_policy_new_full")
    hsts_policy_new_full :: proc(domain: cstring, max_age: u64, expires: ^glib.DateTime, include_subdomains: glib.boolean) -> ^HSTSPolicy ---

    @(link_name = "soup_hsts_policy_new_session_policy")
    hsts_policy_new_session_policy :: proc(domain: cstring, include_subdomains: glib.boolean) -> ^HSTSPolicy ---

    @(link_name = "soup_hsts_policy_new_from_response")
    hsts_policy_new_from_response :: proc(msg: ^Message) -> ^HSTSPolicy ---

    @(link_name = "soup_hsts_policy_copy")
    hsts_policy_copy :: proc(policy: ^HSTSPolicy) -> ^HSTSPolicy ---

    @(link_name = "soup_hsts_policy_equal")
    hsts_policy_equal :: proc(policy1: ^HSTSPolicy, policy2: ^HSTSPolicy) -> glib.boolean ---

    @(link_name = "soup_hsts_policy_get_domain")
    hsts_policy_get_domain :: proc(policy: ^HSTSPolicy) -> cstring ---

    @(link_name = "soup_hsts_policy_is_expired")
    hsts_policy_is_expired :: proc(policy: ^HSTSPolicy) -> glib.boolean ---

    @(link_name = "soup_hsts_policy_includes_subdomains")
    hsts_policy_includes_subdomains :: proc(policy: ^HSTSPolicy) -> glib.boolean ---

    @(link_name = "soup_hsts_policy_is_session_policy")
    hsts_policy_is_session_policy :: proc(policy: ^HSTSPolicy) -> glib.boolean ---

    @(link_name = "soup_hsts_policy_free")
    hsts_policy_free :: proc(policy: ^HSTSPolicy) ---

    @(link_name = "soup_hsts_policy_get_expires")
    hsts_policy_get_expires :: proc(policy: ^HSTSPolicy) -> ^glib.DateTime ---

    @(link_name = "soup_hsts_policy_get_max_age")
    hsts_policy_get_max_age :: proc(policy: ^HSTSPolicy) -> glib.ulong ---

    @(link_name = "soup_logger_get_type")
    logger_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_logger_new")
    logger_new :: proc(level: LoggerLogLevel) -> ^Logger ---

    @(link_name = "soup_logger_set_request_filter")
    logger_set_request_filter :: proc(logger: ^Logger, request_filter: LoggerFilter, filter_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "soup_logger_set_response_filter")
    logger_set_response_filter :: proc(logger: ^Logger, response_filter: LoggerFilter, filter_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "soup_logger_set_printer")
    logger_set_printer :: proc(logger: ^Logger, printer: LoggerPrinter, printer_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "soup_logger_set_max_body_size")
    logger_set_max_body_size :: proc(logger: ^Logger, max_body_size: i32) ---

    @(link_name = "soup_logger_get_max_body_size")
    logger_get_max_body_size :: proc(logger: ^Logger) -> i32 ---

    @(link_name = "soup_message_metrics_get_type")
    message_metrics_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_message_metrics_copy")
    message_metrics_copy :: proc(metrics: ^MessageMetrics) -> ^MessageMetrics ---

    @(link_name = "soup_message_metrics_free")
    message_metrics_free :: proc(metrics: ^MessageMetrics) ---

    @(link_name = "soup_message_metrics_get_fetch_start")
    message_metrics_get_fetch_start :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---

    @(link_name = "soup_message_metrics_get_dns_start")
    message_metrics_get_dns_start :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---

    @(link_name = "soup_message_metrics_get_dns_end")
    message_metrics_get_dns_end :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---

    @(link_name = "soup_message_metrics_get_connect_start")
    message_metrics_get_connect_start :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---

    @(link_name = "soup_message_metrics_get_connect_end")
    message_metrics_get_connect_end :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---

    @(link_name = "soup_message_metrics_get_tls_start")
    message_metrics_get_tls_start :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---

    @(link_name = "soup_message_metrics_get_request_start")
    message_metrics_get_request_start :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---

    @(link_name = "soup_message_metrics_get_response_start")
    message_metrics_get_response_start :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---

    @(link_name = "soup_message_metrics_get_response_end")
    message_metrics_get_response_end :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---

    @(link_name = "soup_message_metrics_get_request_header_bytes_sent")
    message_metrics_get_request_header_bytes_sent :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---

    @(link_name = "soup_message_metrics_get_request_body_size")
    message_metrics_get_request_body_size :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---

    @(link_name = "soup_message_metrics_get_request_body_bytes_sent")
    message_metrics_get_request_body_bytes_sent :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---

    @(link_name = "soup_message_metrics_get_response_header_bytes_received")
    message_metrics_get_response_header_bytes_received :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---

    @(link_name = "soup_message_metrics_get_response_body_size")
    message_metrics_get_response_body_size :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---

    @(link_name = "soup_message_metrics_get_response_body_bytes_received")
    message_metrics_get_response_body_bytes_received :: proc(metrics: ^MessageMetrics) -> glib.uint64 ---

    @(link_name = "soup_multipart_input_stream_get_type")
    multipart_input_stream_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_multipart_input_stream_new")
    multipart_input_stream_new :: proc(msg: ^Message, base_stream: ^gio.InputStream) -> ^MultipartInputStream ---

    @(link_name = "soup_multipart_input_stream_next_part")
    multipart_input_stream_next_part :: proc(multipart: ^MultipartInputStream, cancellable: ^gio.Cancellable, error: ^^glib.Error) -> ^gio.InputStream ---

    @(link_name = "soup_multipart_input_stream_next_part_async")
    multipart_input_stream_next_part_async :: proc(multipart: ^MultipartInputStream, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, data: glib.pointer) ---

    @(link_name = "soup_multipart_input_stream_next_part_finish")
    multipart_input_stream_next_part_finish :: proc(multipart: ^MultipartInputStream, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gio.InputStream ---

    @(link_name = "soup_multipart_input_stream_get_headers")
    multipart_input_stream_get_headers :: proc(multipart: ^MultipartInputStream) -> ^MessageHeaders ---

    @(link_name = "soup_auth_domain_get_type")
    auth_domain_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_auth_domain_add_path")
    auth_domain_add_path :: proc(domain: ^AuthDomain, path: cstring) ---

    @(link_name = "soup_auth_domain_remove_path")
    auth_domain_remove_path :: proc(domain: ^AuthDomain, path: cstring) ---

    @(link_name = "soup_auth_domain_set_filter")
    auth_domain_set_filter :: proc(domain: ^AuthDomain, filter: AuthDomainFilter, filter_data: glib.pointer, dnotify: glib.DestroyNotify) ---

    @(link_name = "soup_auth_domain_get_realm")
    auth_domain_get_realm :: proc(domain: ^AuthDomain) -> cstring ---

    @(link_name = "soup_auth_domain_set_generic_auth_callback")
    auth_domain_set_generic_auth_callback :: proc(domain: ^AuthDomain, auth_callback: AuthDomainGenericAuthCallback, auth_data: glib.pointer, dnotify: glib.DestroyNotify) ---

    @(link_name = "soup_auth_domain_check_password")
    auth_domain_check_password :: proc(domain: ^AuthDomain, msg: ^ServerMessage, username: cstring, password: cstring) -> glib.boolean ---

    @(link_name = "soup_auth_domain_covers")
    auth_domain_covers :: proc(domain: ^AuthDomain, msg: ^ServerMessage) -> glib.boolean ---

    @(link_name = "soup_auth_domain_accepts")
    auth_domain_accepts :: proc(domain: ^AuthDomain, msg: ^ServerMessage) -> cstring ---

    @(link_name = "soup_auth_domain_challenge")
    auth_domain_challenge :: proc(domain: ^AuthDomain, msg: ^ServerMessage) ---

    @(link_name = "soup_auth_domain_basic_get_type")
    auth_domain_basic_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_auth_domain_basic_new")
    auth_domain_basic_new :: proc(optname1: cstring, #c_vararg var_args: ..any) -> ^AuthDomain ---

    @(link_name = "soup_auth_domain_basic_set_auth_callback")
    auth_domain_basic_set_auth_callback :: proc(domain: ^AuthDomain, callback: AuthDomainBasicAuthCallback, user_data: glib.pointer, dnotify: glib.DestroyNotify) ---

    @(link_name = "soup_auth_domain_digest_get_type")
    auth_domain_digest_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_auth_domain_digest_new")
    auth_domain_digest_new :: proc(optname1: cstring, #c_vararg var_args: ..any) -> ^AuthDomain ---

    @(link_name = "soup_auth_domain_digest_set_auth_callback")
    auth_domain_digest_set_auth_callback :: proc(domain: ^AuthDomain, callback: AuthDomainDigestAuthCallback, user_data: glib.pointer, dnotify: glib.DestroyNotify) ---

    @(link_name = "soup_auth_domain_digest_encode_password")
    auth_domain_digest_encode_password :: proc(username: cstring, realm: cstring, password: cstring) -> cstring ---

    @(link_name = "soup_uri_decode_data_uri")
    uri_decode_data_uri :: proc(uri: cstring, content_type: ^cstring) -> ^glib.Bytes ---

    @(link_name = "soup_uri_equal")
    uri_equal :: proc(uri1: ^glib.Uri, uri2: ^glib.Uri) -> glib.boolean ---

    @(link_name = "soup_uri_copy")
    uri_copy :: proc(uri: ^glib.Uri, first_component: URIComponent, #c_vararg var_args: ..any) -> ^glib.Uri ---

    @(link_name = "soup_websocket_error_quark")
    websocket_error_quark :: proc() -> glib.Quark ---

    @(link_name = "soup_websocket_client_prepare_handshake")
    websocket_client_prepare_handshake :: proc(msg: ^Message, origin: cstring, protocols: [^]cstring, supported_extensions: ^glib.PtrArray) ---

    @(link_name = "soup_websocket_client_verify_handshake")
    websocket_client_verify_handshake :: proc(msg: ^Message, supported_extensions: ^glib.PtrArray, accepted_extensions: ^^glib.List, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "soup_websocket_server_check_handshake")
    websocket_server_check_handshake :: proc(msg: ^ServerMessage, origin: cstring, protocols: [^]cstring, supported_extensions: ^glib.PtrArray, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "soup_websocket_server_process_handshake")
    websocket_server_process_handshake :: proc(msg: ^ServerMessage, expected_origin: cstring, protocols: [^]cstring, supported_extensions: ^glib.PtrArray, accepted_extensions: ^^glib.List) -> glib.boolean ---

    @(link_name = "soup_websocket_connection_get_type")
    websocket_connection_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_websocket_connection_new")
    websocket_connection_new :: proc(stream: ^gio.IOStream, uri: ^glib.Uri, type: WebsocketConnectionType, origin: cstring, protocol: cstring, extensions: ^glib.List) -> ^WebsocketConnection ---

    @(link_name = "soup_websocket_connection_get_io_stream")
    websocket_connection_get_io_stream :: proc(self: ^WebsocketConnection) -> ^gio.IOStream ---

    @(link_name = "soup_websocket_connection_get_connection_type")
    websocket_connection_get_connection_type :: proc(self: ^WebsocketConnection) -> WebsocketConnectionType ---

    @(link_name = "soup_websocket_connection_get_uri")
    websocket_connection_get_uri :: proc(self: ^WebsocketConnection) -> ^glib.Uri ---

    @(link_name = "soup_websocket_connection_get_origin")
    websocket_connection_get_origin :: proc(self: ^WebsocketConnection) -> cstring ---

    @(link_name = "soup_websocket_connection_get_protocol")
    websocket_connection_get_protocol :: proc(self: ^WebsocketConnection) -> cstring ---

    @(link_name = "soup_websocket_connection_get_extensions")
    websocket_connection_get_extensions :: proc(self: ^WebsocketConnection) -> ^glib.List ---

    @(link_name = "soup_websocket_connection_get_state")
    websocket_connection_get_state :: proc(self: ^WebsocketConnection) -> WebsocketState ---

    @(link_name = "soup_websocket_connection_get_close_code")
    websocket_connection_get_close_code :: proc(self: ^WebsocketConnection) -> glib.ushort ---

    @(link_name = "soup_websocket_connection_get_close_data")
    websocket_connection_get_close_data :: proc(self: ^WebsocketConnection) -> cstring ---

    @(link_name = "soup_websocket_connection_send_text")
    websocket_connection_send_text :: proc(self: ^WebsocketConnection, text: cstring) ---

    @(link_name = "soup_websocket_connection_send_binary")
    websocket_connection_send_binary :: proc(self: ^WebsocketConnection, data: glib.constpointer, length: glib.size) ---

    @(link_name = "soup_websocket_connection_send_message")
    websocket_connection_send_message :: proc(self: ^WebsocketConnection, type: WebsocketDataType, message: ^glib.Bytes) ---

    @(link_name = "soup_websocket_connection_close")
    websocket_connection_close :: proc(self: ^WebsocketConnection, code: glib.ushort, data: cstring) ---

    @(link_name = "soup_websocket_connection_get_max_incoming_payload_size")
    websocket_connection_get_max_incoming_payload_size :: proc(self: ^WebsocketConnection) -> glib.uint64 ---

    @(link_name = "soup_websocket_connection_set_max_incoming_payload_size")
    websocket_connection_set_max_incoming_payload_size :: proc(self: ^WebsocketConnection, max_incoming_payload_size: glib.uint64) ---

    @(link_name = "soup_websocket_connection_get_keepalive_interval")
    websocket_connection_get_keepalive_interval :: proc(self: ^WebsocketConnection) -> glib.uint_ ---

    @(link_name = "soup_websocket_connection_set_keepalive_interval")
    websocket_connection_set_keepalive_interval :: proc(self: ^WebsocketConnection, interval: glib.uint_) ---

    @(link_name = "soup_server_get_type")
    server_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_server_new")
    server_new :: proc(optname1: cstring, #c_vararg var_args: ..any) -> ^Server ---

    @(link_name = "soup_server_set_tls_certificate")
    server_set_tls_certificate :: proc(server: ^Server, certificate: ^gio.TlsCertificate) ---

    @(link_name = "soup_server_get_tls_certificate")
    server_get_tls_certificate :: proc(server: ^Server) -> ^gio.TlsCertificate ---

    @(link_name = "soup_server_set_tls_database")
    server_set_tls_database :: proc(server: ^Server, tls_database: ^gio.TlsDatabase) ---

    @(link_name = "soup_server_get_tls_database")
    server_get_tls_database :: proc(server: ^Server) -> ^gio.TlsDatabase ---

    @(link_name = "soup_server_set_tls_auth_mode")
    server_set_tls_auth_mode :: proc(server: ^Server, mode: gio.TlsAuthenticationMode) ---

    @(link_name = "soup_server_get_tls_auth_mode")
    server_get_tls_auth_mode :: proc(server: ^Server) -> gio.TlsAuthenticationMode ---

    @(link_name = "soup_server_is_https")
    server_is_https :: proc(server: ^Server) -> glib.boolean ---

    @(link_name = "soup_server_listen")
    server_listen :: proc(server: ^Server, address: ^gio.SocketAddress, options: ServerListenOptions, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "soup_server_listen_all")
    server_listen_all :: proc(server: ^Server, port: glib.uint_, options: ServerListenOptions, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "soup_server_listen_local")
    server_listen_local :: proc(server: ^Server, port: glib.uint_, options: ServerListenOptions, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "soup_server_listen_socket")
    server_listen_socket :: proc(server: ^Server, socket: ^gio.Socket, options: ServerListenOptions, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "soup_server_get_uris")
    server_get_uris :: proc(server: ^Server) -> ^glib.SList ---

    @(link_name = "soup_server_get_listeners")
    server_get_listeners :: proc(server: ^Server) -> ^glib.SList ---

    @(link_name = "soup_server_disconnect")
    server_disconnect :: proc(server: ^Server) ---

    @(link_name = "soup_server_accept_iostream")
    server_accept_iostream :: proc(server: ^Server, stream: ^gio.IOStream, local_addr: ^gio.SocketAddress, remote_addr: ^gio.SocketAddress, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "soup_server_add_handler")
    server_add_handler :: proc(server: ^Server, path: cstring, callback: ServerCallback, user_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "soup_server_add_early_handler")
    server_add_early_handler :: proc(server: ^Server, path: cstring, callback: ServerCallback, user_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "soup_server_add_websocket_handler")
    server_add_websocket_handler :: proc(server: ^Server, path: cstring, origin: cstring, protocols: [^]cstring, callback: ServerWebsocketCallback, user_data: glib.pointer, destroy: glib.DestroyNotify) ---

    @(link_name = "soup_server_add_websocket_extension")
    server_add_websocket_extension :: proc(server: ^Server, extension_type: gobj.Type) ---

    @(link_name = "soup_server_remove_websocket_extension")
    server_remove_websocket_extension :: proc(server: ^Server, extension_type: gobj.Type) ---

    @(link_name = "soup_server_remove_handler")
    server_remove_handler :: proc(server: ^Server, path: cstring) ---

    @(link_name = "soup_server_add_auth_domain")
    server_add_auth_domain :: proc(server: ^Server, auth_domain: ^AuthDomain) ---

    @(link_name = "soup_server_remove_auth_domain")
    server_remove_auth_domain :: proc(server: ^Server, auth_domain: ^AuthDomain) ---

    @(link_name = "soup_server_pause_message")
    server_pause_message :: proc(server: ^Server, msg: ^ServerMessage) ---

    @(link_name = "soup_server_unpause_message")
    server_unpause_message :: proc(server: ^Server, msg: ^ServerMessage) ---

    @(link_name = "soup_server_message_get_type")
    server_message_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_server_message_get_request_headers")
    server_message_get_request_headers :: proc(msg: ^ServerMessage) -> ^MessageHeaders ---

    @(link_name = "soup_server_message_get_response_headers")
    server_message_get_response_headers :: proc(msg: ^ServerMessage) -> ^MessageHeaders ---

    @(link_name = "soup_server_message_get_request_body")
    server_message_get_request_body :: proc(msg: ^ServerMessage) -> ^MessageBody ---

    @(link_name = "soup_server_message_get_response_body")
    server_message_get_response_body :: proc(msg: ^ServerMessage) -> ^MessageBody ---

    @(link_name = "soup_server_message_get_method")
    server_message_get_method :: proc(msg: ^ServerMessage) -> cstring ---

    @(link_name = "soup_server_message_get_http_version")
    server_message_get_http_version :: proc(msg: ^ServerMessage) -> HTTPVersion ---

    @(link_name = "soup_server_message_set_http_version")
    server_message_set_http_version :: proc(msg: ^ServerMessage, version: HTTPVersion) ---

    @(link_name = "soup_server_message_get_reason_phrase")
    server_message_get_reason_phrase :: proc(msg: ^ServerMessage) -> cstring ---

    @(link_name = "soup_server_message_get_status")
    server_message_get_status :: proc(msg: ^ServerMessage) -> glib.uint_ ---

    @(link_name = "soup_server_message_set_status")
    server_message_set_status :: proc(msg: ^ServerMessage, status_code: glib.uint_, reason_phrase: cstring) ---

    @(link_name = "soup_server_message_get_uri")
    server_message_get_uri :: proc(msg: ^ServerMessage) -> ^glib.Uri ---

    @(link_name = "soup_server_message_set_response")
    server_message_set_response :: proc(msg: ^ServerMessage, content_type: cstring, resp_use: MemoryUse, resp_body: cstring, resp_length: glib.size) ---

    @(link_name = "soup_server_message_set_redirect")
    server_message_set_redirect :: proc(msg: ^ServerMessage, status_code: glib.uint_, redirect_uri: cstring) ---

    @(link_name = "soup_server_message_get_socket")
    server_message_get_socket :: proc(msg: ^ServerMessage) -> ^gio.Socket ---

    @(link_name = "soup_server_message_get_local_address")
    server_message_get_local_address :: proc(msg: ^ServerMessage) -> ^gio.SocketAddress ---

    @(link_name = "soup_server_message_get_remote_address")
    server_message_get_remote_address :: proc(msg: ^ServerMessage) -> ^gio.SocketAddress ---

    @(link_name = "soup_server_message_get_remote_host")
    server_message_get_remote_host :: proc(msg: ^ServerMessage) -> cstring ---

    @(link_name = "soup_server_message_steal_connection")
    server_message_steal_connection :: proc(msg: ^ServerMessage) -> ^gio.IOStream ---

    @(link_name = "soup_server_message_is_options_ping")
    server_message_is_options_ping :: proc(msg: ^ServerMessage) -> glib.boolean ---

    @(link_name = "soup_server_message_pause")
    server_message_pause :: proc(msg: ^ServerMessage) ---

    @(link_name = "soup_server_message_unpause")
    server_message_unpause :: proc(msg: ^ServerMessage) ---

    @(link_name = "soup_server_message_get_tls_peer_certificate")
    server_message_get_tls_peer_certificate :: proc(msg: ^ServerMessage) -> ^gio.TlsCertificate ---

    @(link_name = "soup_server_message_get_tls_peer_certificate_errors")
    server_message_get_tls_peer_certificate_errors :: proc(msg: ^ServerMessage) -> gio.TlsCertificateFlags ---

    @(link_name = "soup_session_get_type")
    session_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_session_error_quark")
    session_error_quark :: proc() -> glib.Quark ---

    @(link_name = "soup_session_new")
    session_new :: proc() -> ^Session ---

    @(link_name = "soup_session_new_with_options")
    session_new_with_options :: proc(optname1: cstring, #c_vararg var_args: ..any) -> ^Session ---

    @(link_name = "soup_session_get_local_address")
    session_get_local_address :: proc(session: ^Session) -> ^gio.InetSocketAddress ---

    @(link_name = "soup_session_get_max_conns")
    session_get_max_conns :: proc(session: ^Session) -> glib.uint_ ---

    @(link_name = "soup_session_get_max_conns_per_host")
    session_get_max_conns_per_host :: proc(session: ^Session) -> glib.uint_ ---

    @(link_name = "soup_session_set_proxy_resolver")
    session_set_proxy_resolver :: proc(session: ^Session, proxy_resolver: ^gio.ProxyResolver) ---

    @(link_name = "soup_session_get_proxy_resolver")
    session_get_proxy_resolver :: proc(session: ^Session) -> ^gio.ProxyResolver ---

    @(link_name = "soup_session_set_tls_database")
    session_set_tls_database :: proc(session: ^Session, tls_database: ^gio.TlsDatabase) ---

    @(link_name = "soup_session_get_tls_database")
    session_get_tls_database :: proc(session: ^Session) -> ^gio.TlsDatabase ---

    @(link_name = "soup_session_set_tls_interaction")
    session_set_tls_interaction :: proc(session: ^Session, tls_interaction: ^gio.TlsInteraction) ---

    @(link_name = "soup_session_get_tls_interaction")
    session_get_tls_interaction :: proc(session: ^Session) -> ^gio.TlsInteraction ---

    @(link_name = "soup_session_set_timeout")
    session_set_timeout :: proc(session: ^Session, timeout: glib.uint_) ---

    @(link_name = "soup_session_get_timeout")
    session_get_timeout :: proc(session: ^Session) -> glib.uint_ ---

    @(link_name = "soup_session_set_idle_timeout")
    session_set_idle_timeout :: proc(session: ^Session, timeout: glib.uint_) ---

    @(link_name = "soup_session_get_idle_timeout")
    session_get_idle_timeout :: proc(session: ^Session) -> glib.uint_ ---

    @(link_name = "soup_session_set_user_agent")
    session_set_user_agent :: proc(session: ^Session, user_agent: cstring) ---

    @(link_name = "soup_session_get_user_agent")
    session_get_user_agent :: proc(session: ^Session) -> cstring ---

    @(link_name = "soup_session_set_accept_language")
    session_set_accept_language :: proc(session: ^Session, accept_language: cstring) ---

    @(link_name = "soup_session_get_accept_language")
    session_get_accept_language :: proc(session: ^Session) -> cstring ---

    @(link_name = "soup_session_set_accept_language_auto")
    session_set_accept_language_auto :: proc(session: ^Session, accept_language_auto: glib.boolean) ---

    @(link_name = "soup_session_get_accept_language_auto")
    session_get_accept_language_auto :: proc(session: ^Session) -> glib.boolean ---

    @(link_name = "soup_session_get_remote_connectable")
    session_get_remote_connectable :: proc(session: ^Session) -> ^gio.SocketConnectable ---

    @(link_name = "soup_session_abort")
    session_abort :: proc(session: ^Session) ---

    @(link_name = "soup_session_send_async")
    session_send_async :: proc(session: ^Session, msg: ^Message, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "soup_session_send_finish")
    session_send_finish :: proc(session: ^Session, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^gio.InputStream ---

    @(link_name = "soup_session_send")
    session_send :: proc(session: ^Session, msg: ^Message, cancellable: ^gio.Cancellable, error: ^^glib.Error) -> ^gio.InputStream ---

    @(link_name = "soup_session_send_and_read_async")
    session_send_and_read_async :: proc(session: ^Session, msg: ^Message, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "soup_session_send_and_read_finish")
    session_send_and_read_finish :: proc(session: ^Session, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^glib.Bytes ---

    @(link_name = "soup_session_send_and_read")
    session_send_and_read :: proc(session: ^Session, msg: ^Message, cancellable: ^gio.Cancellable, error: ^^glib.Error) -> ^glib.Bytes ---

    @(link_name = "soup_session_send_and_splice_async")
    session_send_and_splice_async :: proc(session: ^Session, msg: ^Message, out_stream: ^gio.OutputStream, flags: gio.OutputStreamSpliceFlags, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "soup_session_send_and_splice_finish")
    session_send_and_splice_finish :: proc(session: ^Session, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "soup_session_send_and_splice")
    session_send_and_splice :: proc(session: ^Session, msg: ^Message, out_stream: ^gio.OutputStream, flags: gio.OutputStreamSpliceFlags, cancellable: ^gio.Cancellable, error: ^^glib.Error) -> glib.ssize ---

    @(link_name = "soup_session_get_async_result_message")
    session_get_async_result_message :: proc(session: ^Session, result: ^gio.AsyncResult) -> ^Message ---

    @(link_name = "soup_session_add_feature")
    session_add_feature :: proc(session: ^Session, feature: ^SessionFeature) ---

    @(link_name = "soup_session_add_feature_by_type")
    session_add_feature_by_type :: proc(session: ^Session, feature_type: gobj.Type) ---

    @(link_name = "soup_session_remove_feature")
    session_remove_feature :: proc(session: ^Session, feature: ^SessionFeature) ---

    @(link_name = "soup_session_remove_feature_by_type")
    session_remove_feature_by_type :: proc(session: ^Session, feature_type: gobj.Type) ---

    @(link_name = "soup_session_has_feature")
    session_has_feature :: proc(session: ^Session, feature_type: gobj.Type) -> glib.boolean ---

    @(link_name = "soup_session_get_feature")
    session_get_feature :: proc(session: ^Session, feature_type: gobj.Type) -> ^SessionFeature ---

    @(link_name = "soup_session_get_feature_for_message")
    session_get_feature_for_message :: proc(session: ^Session, feature_type: gobj.Type, msg: ^Message) -> ^SessionFeature ---

    @(link_name = "soup_session_websocket_connect_async")
    session_websocket_connect_async :: proc(session: ^Session, msg: ^Message, origin: cstring, protocols: [^]cstring, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "soup_session_websocket_connect_finish")
    session_websocket_connect_finish :: proc(session: ^Session, result: ^gio.AsyncResult, error: ^^glib.Error) -> ^WebsocketConnection ---

    @(link_name = "soup_session_preconnect_async")
    session_preconnect_async :: proc(session: ^Session, msg: ^Message, io_priority: i32, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---

    @(link_name = "soup_session_preconnect_finish")
    session_preconnect_finish :: proc(session: ^Session, result: ^gio.AsyncResult, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "soup_session_feature_get_type")
    session_feature_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_tld_get_base_domain")
    tld_get_base_domain :: proc(hostname: cstring, error: ^^glib.Error) -> cstring ---

    @(link_name = "soup_tld_domain_is_public_suffix")
    tld_domain_is_public_suffix :: proc(domain: cstring) -> glib.boolean ---

    @(link_name = "soup_tld_error_quark")
    tld_error_quark :: proc() -> glib.Quark ---

    @(link_name = "soup_websocket_extension_get_type")
    websocket_extension_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_websocket_extension_configure")
    websocket_extension_configure :: proc(extension: ^WebsocketExtension, connection_type: WebsocketConnectionType, params: ^glib.HashTable, error: ^^glib.Error) -> glib.boolean ---

    @(link_name = "soup_websocket_extension_get_request_params")
    websocket_extension_get_request_params :: proc(extension: ^WebsocketExtension) -> cstring ---

    @(link_name = "soup_websocket_extension_get_response_params")
    websocket_extension_get_response_params :: proc(extension: ^WebsocketExtension) -> cstring ---

    @(link_name = "soup_websocket_extension_process_outgoing_message")
    websocket_extension_process_outgoing_message :: proc(extension: ^WebsocketExtension, header: ^glib.uint8, payload: ^glib.Bytes, error: ^^glib.Error) -> ^glib.Bytes ---

    @(link_name = "soup_websocket_extension_process_incoming_message")
    websocket_extension_process_incoming_message :: proc(extension: ^WebsocketExtension, header: ^glib.uint8, payload: ^glib.Bytes, error: ^^glib.Error) -> ^glib.Bytes ---

    @(link_name = "soup_websocket_extension_deflate_get_type")
    websocket_extension_deflate_get_type :: proc() -> gobj.Type ---

    @(link_name = "soup_websocket_extension_manager_get_type")
    websocket_extension_manager_get_type :: proc() -> gobj.Type ---

}

foreign import soup_runic "system:soup-3.0"


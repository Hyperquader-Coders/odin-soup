#!/usr/bin/env bash
# Fails when one of runic's three known faults is back in the generated output:
#   - a `#c_vararg` procedure whose C declaration took a `va_list` (runic drops the trailing
#     `va_list` and marks the procedure `#c_vararg ..any`, which is a wrong call), or
#   - a parameter listed in `corrected` typed `[^]T` again (runic writes `[^]T` for any pointer
#     parameter whose C name ends in "s", however many elements it holds).
#   - a `T **` out-parameter of one pointer typed `[^]^T` (listed in `arrays` when it is a real
#     array).
# rune.yml (`detect: parameters: declared`, `arrays:`) and the fork hold the fixes; `make check-generated` runs this, `make lint` runs that.
set -euo pipefail
cd "$(dirname "$0")/.."

files=("soup/soup.odin")

# Procedures the fork skips because they take a `va_list`.
removed="form_encode_valist"

# Link names that mark a va_list procedure, wherever it comes from.
valist_re='_valist|_va_list|vprintf|vsnprintf|vsprintf|vasprintf|_vfprintf|_logv|_vscanf'

# `proc name, parameter` lines: parameters the C headers pass as one `T *`, which `parameters: declared`
# types `^T` (`^^T` for an out-parameter). A line is a failure when it is `[^]` again.
corrected='
content_sniffer_sniff, params
cookie_jar_get_cookie_list_with_same_site_info, site_for_cookies
cookie_set_expires, expires
cookies_free, cookies
cookies_to_cookie_header, cookies
cookies_to_request, cookies
cookies_to_response, cookies
headers_parse_request, req_headers
headers_parse_response, headers
hsts_policy_new_full, expires
message_headers_append, hdrs
message_headers_clean_connection_headers, hdrs
message_headers_clear, hdrs
message_headers_foreach, hdrs
message_headers_free_ranges, hdrs
message_headers_get_content_disposition, hdrs
message_headers_get_content_disposition, params
message_headers_get_content_length, hdrs
message_headers_get_content_range, hdrs
message_headers_get_content_type, hdrs
message_headers_get_content_type, params
message_headers_get_encoding, hdrs
message_headers_get_expectations, hdrs
message_headers_get_headers_type, hdrs
message_headers_get_list, hdrs
message_headers_get_one, hdrs
message_headers_get_ranges, hdrs
message_headers_header_contains, hdrs
message_headers_header_equals, hdrs
message_headers_iter_init, hdrs
message_headers_ref, hdrs
message_headers_remove, hdrs
message_headers_replace, hdrs
message_headers_set_content_disposition, hdrs
message_headers_set_content_disposition, params
message_headers_set_content_length, hdrs
message_headers_set_content_range, hdrs
message_headers_set_content_type, hdrs
message_headers_set_content_type, params
message_headers_set_encoding, hdrs
message_headers_set_expectations, hdrs
message_headers_set_range, hdrs
message_headers_set_ranges, hdrs
message_headers_unref, hdrs
message_metrics_copy, metrics
message_metrics_free, metrics
message_metrics_get_connect_end, metrics
message_metrics_get_connect_start, metrics
message_metrics_get_dns_end, metrics
message_metrics_get_dns_start, metrics
message_metrics_get_fetch_start, metrics
message_metrics_get_request_body_bytes_sent, metrics
message_metrics_get_request_body_size, metrics
message_metrics_get_request_header_bytes_sent, metrics
message_metrics_get_request_start, metrics
message_metrics_get_response_body_bytes_received, metrics
message_metrics_get_response_body_size, metrics
message_metrics_get_response_end, metrics
message_metrics_get_response_header_bytes_received, metrics
message_metrics_get_response_start, metrics
message_metrics_get_tls_start, metrics
message_set_request_body_from_bytes, bytes
message_set_site_for_cookies, site_for_cookies
multipart_append_part, headers
multipart_get_part, headers
multipart_new_from_message, headers
multipart_to_message, dest_headers
server_listen, address
websocket_client_prepare_handshake, supported_extensions
websocket_client_verify_handshake, accepted_extensions
websocket_client_verify_handshake, supported_extensions
websocket_connection_new, extensions
websocket_extension_configure, params
websocket_server_check_handshake, supported_extensions
websocket_server_process_handshake, accepted_extensions
websocket_server_process_handshake, supported_extensions
'

fail=0

for f in "${files[@]}"; do
    [ -f "$f" ] || { echo "check-generated: $f not found" >&2; exit 2; }
    for n in $removed; do
        if grep -Eq "^[[:space:]]+$n :: proc" "$f"; then
            echo "$f: $n is back; it takes a va_list and is bound wrongly (runic skips va_list procedures)"
            fail=1
        fi
    done
    bad=$(awk -v re="$valist_re" '
        /link_name = / { match($0, /"[^"]*"/); link = substr($0, RSTART + 1, RLENGTH - 2); next }
        /#c_vararg/ && link ~ re { print "  " link }
        /::[[:space:]]*proc/ { link = "" }
    ' "$f")
    if [ -n "$bad" ]; then
        echo "$f: #c_vararg procedures that take a va_list:"
        echo "$bad"
        fail=1
    fi
done

while IFS=', ' read -r proc param; do
    [ -n "$proc" ] || continue
    for f in "${files[@]}"; do
        if grep -Eq "^[[:space:]]+$proc :: proc\(.*[( ]$param: \[\^\]" "$f"; then
            echo "$f: $proc, $param is [^] again; the header passes one object (rune.yml parameters: declared; list real arrays under arrays:)"
            fail=1
        fi
    done
done <<<"$corrected"

# Parameters typed `[^]^T` that are real arrays: a pointer and a count, or an out-array. Any
# other `[^]^T` parameter is a `T **` out-parameter of one pointer, which runic mistypes and
# `parameters: declared` types `^^T`. Read the header and the `(out)` / `(array)`
# annotations before adding a line here.
arrays='
message_headers_get_ranges, ranges
'

for f in "${files[@]}"; do
    out=$(ARRAYS="$arrays" perl -ne '
        BEGIN { for (split /\n/, $ENV{ARRAYS}) { next unless /\S/; my ($p, $a) = split /,\s*/; $ok{"$p, $a"} = 1 } }
        if (/^\s*(\w+) :: proc\b.*?\((.*)\)/) {
            my ($n, $args) = ($1, $2);
            while ($args =~ /\b(\w+): \[\^\]\^/g) {
                print "$ARGV:$.: $n, $1 is [^]^T and not a listed array; a T ** out-parameter of one pointer is ^^T (rune.yml parameters: declared; list real arrays under arrays:)\n" unless $ok{"$n, $1"};
            }
        }
    ' "$f")
    if [ -n "$out" ]; then echo "$out"; fail=1; fi
done

if [ "$fail" -ne 0 ]; then
    echo "check-generated: runic's output regressed; fix rune.yml (detect.arrays) and run make generate"
    exit 1
fi
echo "check-generated: ok"

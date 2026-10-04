#!/usr/bin/env bash
# Rewrites runic's output where runic gets Odin wrong. Run by `make generate` after runic,
# once per package: scripts/postprocess.sh soup. Deterministic: the same runic output always
# gives the same file. Every rule is listed in docs/PATCHED.md. Flag enums become bit_sets
# (bit_sets below, the function of odin-glib's script).
#
# The structure follows odin-glib's scripts/postprocess.sh (rules from odin-gtk, MIT,
# docs/LICENSE-odin-gtk.md).
set -euo pipefail

# The GFlags types: the <bitfield> entries of Soup-3.0.gir that soup.h declares. runic emits
# them as `enum u32` of the C values, which a value rule cannot tell from sequential enums, so
# they are listed. All four <bitfield> entries are declared and have single-bit members.
soup_flags="Cacheability Expectation MessageFlags ServerListenOptions"

# bit_sets <file> <strip-prefix> <enum>...: `Foo :: enum u32 {A = 1, B = 4, C = 5, NONE = 0}`
# becomes
#   FooBit :: enum u32 {A = 0, B = 2}        bit indices, prefix stripped from the members
#   Foo :: bit_set[FooBit; u32]              same size and bits as the C type
#   C :: Foo{.A, .B}                         composite masks, by their C names
#   NONE :: Foo{}                            zero members, by their C names; a name with no
#                                            underscore (NONE, DEFAULT), or one that another
#                                            listed enum also declares (NO_FLAGS), is prefixed
#                                            FOO_ so it is unique
# Members that are not one bit or zero are composites; a composite with a bit that has no
# member is a transmute of the C value. A negative member (bit 31) is its 32-bit two's
# complement; the enum may be `enum i32`.
# Members with the same value (PRIVATE and STATIC_NAME) keep both names in FooBit. Fails if a
# listed enum is missing or has no single-bit member, so a header bump that changes a flag type
# is noticed.
bit_sets() {
    local file=$1 strip=$2
    shift 2
    STRIP=$strip NAMES="$*" perl -i -ne '
        BEGIN {
            $strip = $ENV{STRIP}; %want = map { $_ => 1 } split " ", $ENV{NAMES};
            # a zero or composite name declared by more than one listed enum is ambiguous
            open my $in, "<", $ARGV[0] or die "postprocess: $ARGV[0]: $!\n";
            while (<$in>) {
                next unless /^(\w+) :: enum (?:u32|i32) \{(.*)\}\s*$/ && $want{$1};
                my %seen;
                for my $m (split /,\s*/, $2 =~ s/\s+$//r) {
                    next unless $m =~ /^(\w+) = (-?\d+)$/;
                    my ($id, $v) = ($1, $2); $v += 4294967296 if $v < 0;
                    $cnt{$id}++ if !$seen{$id}++ && ($v == 0 || ($v & ($v - 1)) != 0);
                }
            }
            close $in;
        }
        if (/^(\w+) :: enum (?:u32|i32) \{(.*)\}\s*$/ && $want{$1}) {
            my ($name, $body) = ($1, $2);
            delete $want{$name};
            my (@bits, @zero, @comp, %idx, $mask);
            (my $pre = uc($name =~ s/([a-z0-9])([A-Z])/$1_$2/gr)) .= "_";
            for my $m (split /,\s*/, $body =~ s/\s+$//r) {
                $m =~ /^(\w+) = (-?\d+)$/ or die "postprocess: $name: cannot read member $m\n";
                my ($id, $v) = ($1, $2);
                $v += 4294967296 if $v < 0;
                die "postprocess: $name.$id does not fit 32 bits\n" if $v < 0 || $v > 4294967295;
                if ($v == 0) { push @zero, $id }
                elsif (($v & ($v - 1)) == 0) { push @bits, [$id, $v] }
                else { push @comp, [$id, $v] }
            }
            die "postprocess: $name has no single-bit member\n" unless @bits;
            for (@bits) {
                my $i = 0; $i++ while (1 << $i) != $_->[1];
                ($id = $_->[0]) =~ s/^\Q$strip\E//;
                $idx{$_->[1]} //= $id; $mask |= $_->[1];
                $_ = [$id, $i];
            }
            print "${name}Bit :: enum u32 {", join(", ", map { "$_->[0] = $_->[1]" } @bits), "}\n";
            print "$name :: bit_set[${name}Bit; u32]\n";
            my $cname = sub { ($_[0] =~ /_/ && $cnt{$_[0]} < 2) ? $_[0] : "$pre$_[0]" };
            for (@zero) { print $cname->($_), " :: $name\{}\n" }
            for (@comp) {
                my ($id, $v) = @$_;
                $id = $cname->($id);
                if (($v & ~$mask) == 0) {
                    print "$id :: $name\{", join(", ", map { ".$idx{$_}" } grep { $v & $_ } sort { $a <=> $b } keys %idx), "}\n";
                } else { print "$id :: transmute($name)u32($v)\n" }
            }
        } else { print }
        END { die "postprocess: flag enum(s) not found: " . join(" ", sort keys %want) . "\n" if %want; }
    ' "$file"
}

pkg=${1:?usage: postprocess.sh soup}
file="$pkg/$pkg.odin"
[ -f "$file" ] || { echo "postprocess: $file not found" >&2; exit 2; }

case "$pkg" in
soup)
    # SC2016: the backticks are literal text in the generated file.
    # shellcheck disable=SC2016
    sed -i "$file" \
        -e '/^\(_SOUP_EXTERN\|VAR\|DEPRECATED\|AVAILABLE_IN_\|DEPRECATED_IN_\|GLIB_MKENUMS_EXTERN\)/d' \
        -e '/^\(MAJOR_VERSION\|MINOR_VERSION\|MICRO_VERSION\|VERSION_\|HSTS_POLICY_MAX_AGE_PAST\)/s/`//g' \
        -e 's#^\(COOKIE_MAX_AGE_ONE_YEAR :: \).*#\131556926#' \
        -e '/^COOKIE_MAX_AGE_/s/`//g' \
        -e 's#^METHOD_\([A-Z]*\) :: .*#METHOD_\1 :: "\1"#' \
        -e '/^TYPE_/s#`(\?soup_\([a-z0-9_]*_get_type\) *())\?`#\1#' \
        -e '/^[A-Z_]*ERROR :: /s#`(\?soup_\([a-z0-9_]*_quark\) *())\?`#\1#' \
        -e 's#^HTTP_URI_FLAGS :: .*#HTTP_URI_FLAGS :: glib.UriFlags{.HAS_PASSWORD, .ENCODED_PATH, .ENCODED_QUERY, .ENCODED_FRAGMENT, .SCHEME_NORMALIZE}#' \
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_Soup\1$##' \
        -e 's#\b_Soup\([A-Z]\)#\1#g'
    # shellcheck disable=SC2086
    bit_sets "$file" "" $soup_flags
    ;;
*)
    echo "postprocess: unknown package $pkg" >&2
    exit 2
    ;;
esac

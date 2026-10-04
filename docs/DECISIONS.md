# Decisions — odin-soup

Settled choices. An entry that stops being true is rewritten, not appended to.

## 1. Generated, not hand-written

The bindings are generated with runic from the headers Amber ships, so a library bump is a
regeneration. Hand fixes are the exception and are tracked in [PATCHED.md](PATCHED.md).

## 2. runic: Hyperquader-Coders/runic at amber-0.8

The generator is Hyperquader-Coders/runic at tag `amber-0.8`, built into
`../runic/build/runic`; the pin and the reasons are in odin-glib's DECISIONS §2. A new tag
moves the pin in that repo, not here.

## 3. GLib comes from odin-glib

Types from GLib, GObject and GIO are external sources (`glib:glib`, `glib:gobject`,
`glib:gio`) in `soup/rune.yml`, so none is declared a second time. Their path globs are
relative to the rune file (odin-glib's DECISIONS §4), and the `g` and `G` type prefixes are
trimmed so external names match odin-glib's.

## 4. Linux x86_64 only, system library

The rune file lists one platform and links `system:soup-3.0`.

## 5. Flag enums are bit_sets, chosen by a list

`Cacheability`, `Expectation`, `MessageFlags` and `ServerListenOptions`, the `<bitfield>`
entries of `Soup-3.0.gir`, are `bit_set[FooBit; u32]` by the rule of odin-glib's DECISIONS §8:
`{.SERVER_LISTEN_IPV4_ONLY}`, the C size (4 bytes), members under their generated names. They
cross the C boundary by value (`message_set_flags`, `server_listen_local`) and the headers'
`HTTP_URI_FLAGS` is a `glib.UriFlags` set. A GFlags type added by a library bump is added to
the list in `postprocess.sh` by hand.

## 6. Parameters are single objects unless declared

runic 0.8 writes `[^]T` for a pointer parameter whose C name ends in `s` (`settings`, `lines`),
however many elements it holds, which lets a caller index past one element, and drops a trailing
`va_list`, binding the procedure as `#c_vararg ..any`. Amber's runic fork (branch `amber-patched`)
has `parameters: declared`: with it every procedure parameter is `^T` (`T **` is `^^T`) unless
`arrays:` in the package's `rune.yml` lists it, chosen against the C headers, and a va_list
procedure is skipped. Struct members, variables and typedefs keep runic's name guess, and the
parameters of function-pointer types are plain `^T`: a limit of the fork, true in every binding.
Where a binding needs it, the `param_rules` table in `postprocess.sh` restores the `[^]` for
those parameters' real arrays, rewrites single-object struct members and corrects `T ***` outs;
a row that matches nothing fails the build. Rejected: rewriting the output in `postprocess.sh`,
which had to be told each parameter, matched `va_list` procedures by name pattern (it deleted
`list_store_insert_with_values` for containing `_va`) and was a second place to keep in step
with the headers. `scripts/check-generated.sh` stays as the guard that any regeneration, with
any runic, keeps the listed parameters right.

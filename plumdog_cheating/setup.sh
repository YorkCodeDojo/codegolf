#!/bin/bash

cd "$(dirname "$0")"
if [[ $1 == "-q" ]]; then QUIET=1; fi

info() {
    if [[ -z $QUIET ]]; then echo "$1"; fi
}

# When we give magic_source.py the filename taken from the contents of
# actual_source, something sneaky happens and the resulting file is
# valid python and prints the required output. So this is actually the
# "submitted" file. But the filename it gets is not very friendly to
# less accomodating file systems, so it isn't checked into version
# control.

NEWNAME=$(cat actual_source.py)
info "Giving magic_source.py a new name..."
cp magic_source.py "$NEWNAME"
info "Now run python on the new file with the suspicious name that starts with a W"

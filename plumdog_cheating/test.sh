#!/bin/bash

cd "$(dirname "$0")"

./setup.sh -q

# Run python2 on the magical W file
python2 W* > output.txt

DIFF=$(diff output.txt reference.txt)

if [[ $DIFF != "" ]]; then
    echo "Nope"
    echo "============"
    echo "$DIFF"
else
    echo "All good"
    stat --printf "%s bytes\n" W*
fi

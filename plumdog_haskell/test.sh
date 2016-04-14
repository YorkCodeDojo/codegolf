#!/bin/bash
cd "$(dirname "$0")"
runhaskell main.hs > output.txt

DIFF=$(diff output.txt reference.txt)

if [[ $DIFF != "" ]]; then
    echo "Nope"
    echo "============"
    echo "$DIFF"
else
    echo "All good"
    stat --printf "%s\n" main.hs
fi

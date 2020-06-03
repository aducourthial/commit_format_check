#!/bin/bash

for name in $*
do
if [[ "$name" == *".py"* ]]; then
    python3 -m doctest "$name"
fi
done


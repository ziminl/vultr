#!/bin/bash

versions=$(ls -d /usr/lib/python*/ 2>/dev/null | sed 's|/usr/lib/python||;s|/||' | sort -V)

for version in $versions; do
    file="/usr/lib/python${version}/EXTERNALLY-MANAGED"
    if [[ -f "$file" ]]; then
        sudo rm -f "$file"
        echo "Deleted $file"
    else
        echo "File not found: $file"
    fi
done

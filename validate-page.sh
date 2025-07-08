#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -ne 1 ] || [ -z "$1" ]; then
    echo "Usage: $0 PATH"  >&2
    exit 1
fi

path=$1

# Collapse multiple slashes to 1
path=$(echo "$path" | sed -E 's#/+#/#g')

# Remove replace _index.md paths with the path that will lead to the index.
if [[ $path == */_index.md ]]; then
    path=${path%/_index.md}
# Remove .md from paths.
elif [[ $path == *.md ]]; then
    path=${path%.md}
fi

# Remove .html from paths.
if [[ $path == *.html ]]; then
    path=${path%.html}
fi

# Remove ./ from the front of paths if present.
if [[ $path == ./* ]]; then
    path=${path#./}
fi

# Add a leading slash.
if ! [[ $path == /* ]]; then
    path="/$path"
fi

# Add a trailing slash.
if ! [[ $path == */ ]]; then
    path="$path/"
fi

# Remove content paths.
if [[ $path == /content* ]]; then
    path=${path#/content}
fi

path="public${path}index.html"

docker run -i --rm \
    ghcr.io/validator/validator:latest vnu --format text - 2>&1 \
    < "$path" \
    | grep -v '^Picked up JAVA_TOOL_OPTIONS'

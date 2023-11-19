#!/usr/bin/env bash

set -eu

# Make sure we run this from the directory the script is in.
cd "$(dirname "${BASH_SOURCE[0]}")"

# Build the Hugo image from scratch.
image=$(docker build -q .)
# Run Hugo.
docker run -v "$(pwd)":/workdir "$image" hugo

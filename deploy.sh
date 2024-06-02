#!/usr/bin/env bash

set -eu

# Make sure we run this from the directory the script is in.
cd "$(dirname "${BASH_SOURCE[0]}")"

# Pull the latest code.
git pull
# Update submodules such as the template.
git submodule update --init
# Run Hugo using the image
docker compose run site 'hugo'

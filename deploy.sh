#!/usr/bin/env bash

set -eu

# Pull the latest code.
git pull
# Update submodules such as the template.
git submodule update --init
# Run Hugo using the image
docker compose run -v "$(pwd)/public":/workdir/public site 'hugo'

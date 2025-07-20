#!/usr/bin/env bash

set -eu

# Pull the latest code.
git pull
# Update submodules such as the template.
git submodule update --init
# Run Hugo using the image. Extra files in `public/` will be removed.
docker compose run --remove-orphans --rm \
    -v "$(pwd)/public":/workdir/public site \
    hugo --cleanDestinationDir

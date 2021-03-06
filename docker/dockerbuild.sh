#!/bin/bash
set -euxo pipefail

# Install programs required for build
npm install -g bower

# Fetch dependencies
yarn
bower --allow-root install

# Compress images and build
yarn run build optimize-images
yarn run build

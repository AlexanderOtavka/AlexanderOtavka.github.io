#!/usr/bin/env bash
# Install dependencies based on our Gemfile
# Autogenerates Gemfile.lock and gemset.nix

set -euo pipefail

nix-shell -p bundler bundix --run "bundle install && bundix"
echo "Lockfiles generated.  You can now run nix-shell"

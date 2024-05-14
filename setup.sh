#!/usr/bin/env bash

# Install dependencies based on our gemfile
nix-shell -p bundler bundix --run "bundle install"
nix-shell -p bundler bundix --run "bundix"

echo "Dependencies installed.  You can now run nix-shell"

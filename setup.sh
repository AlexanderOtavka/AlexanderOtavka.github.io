#!/usr/bin/env bash

# Install dependencies based on our gemfile
nix-shell -p bundler bundix --run "bundle install"
nix-shell -p bundler bundix --run "bundix"
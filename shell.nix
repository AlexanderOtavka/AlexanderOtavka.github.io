{ pkgs ? import <nixpkgs> {} }:

let
  # Load the bundlerEnv function from nixpkgs
  bundlerEnv = pkgs.bundlerEnv;

  # Define the environment
  jekyllEnv = bundlerEnv {
    name = "jekyll-env";
    inherit (pkgs) ruby;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
  };
in
pkgs.mkShell {
  buildInputs = [
    jekyllEnv
    pkgs.ruby
    pkgs.bundler
    pkgs.git
  ];

  shellHook = ''
    export PATH=$PWD/.gem/ruby/$(ruby -e 'print RUBY_VERSION')/bin:$PATH
    if [ ! -f Gemfile.lock ]; then
      bundle install
    fi

    alias serve="bundle exec jekyll serve"
    echo "You can now use the 'serve' alias to run 'bundle exec jekyll serve'"
  '';
}

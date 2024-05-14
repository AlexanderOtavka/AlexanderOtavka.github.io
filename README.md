# Zander Otavka
> Personal Website

This is my personal website repo, built with jekyll, served with Github pages,
and accessible at https://alexanderotavka.github.io.

## Development

Be sure [nix is installed](https://determinate.systems/posts/determinate-nix-installer/).
Use `nix-shell` to get started in a reproducible dev environment.  Inside the
`nix-shell`, you can run any `bundler` command, or just run the `serve` alias
to create local dev server.

### Installing Dependencies

Add your dependencies to `Gemfile`, then run `./setup.sh` to rebuild the
associated `Gemfile.lock` and `gemset.nix` automatically.

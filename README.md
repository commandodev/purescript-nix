# nix-shell environment for purescript #

Run the following to drop into a `nix-shell` sandbox with purescript installed

    git clone https://github.com/boothead/purescript-nix.git
    ln -s path/to/nixpkgs/checkout
    nix-shell -I . --pure -A pursEnv

I think you can omit the `-I .` and link to a nixpkgs checkout,
however my work flow uses a local nixpkgs with ghc 7.8.3.

You can now install the starter project:

    git clone https://github.com/purescript/starter-kit.git
    cd starter-kit
    npm install
    bower update
    grunt


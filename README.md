# nix-shell environment for purescript #

Run the following to drop into a `nix-shell` sandbox with purescript installed

    git clone https://github.com/boothead/purescript-nix.git
    ln -s path/to/nixpks/checkout
    nix-shell -I . --pure -A pursEnv

You can now install the starter project:

    git clone https://github.com/purescript/starter-kit.git
    cd starter-kit
    npm install
    bower update
    grunt


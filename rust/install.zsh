source rust/rsvm.zsh
STABLE_VERSION=$(rsvm ls-channel stable)

if [ ! -d ~/.rsvm/versions/$STABLE_VERSION ]; then
    rsvm install $STABLE_VERSION
    rsvm use $STABLE_VERSION
fi

function rust_install {
  [[ -e ~/.cargo/bin/$2 ]] || cargo install --quiet $1
}

rust_install cargo-edit cargo-add
rust_install ripgrep rg
rust_install xsv xsv

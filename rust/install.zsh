source rust/rsvm.zsh
STABLE_VERSION=$(rsvm ls-channel stable)

if [ ! -d ~/.rsvm/versions/$STABLE_VERSION ]; then
    rsvm install $STABLE_VERSION
    rsvm use $STABLE_VERSION
fi

[[ -e ~/.cargo/bin/cargo-add ]] || cargo install cargo-edit
[[ -e ~/.cargo/bin/xsv ]] || cargo install xsv

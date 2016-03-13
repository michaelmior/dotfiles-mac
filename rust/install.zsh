source rust/rsvm.zsh
STABLE_VERSION=$(rsvm ls-channel stable)

if [ ! -d ~/.rsvm/versions/$STABLE_VERSION ]; then
    rsvm install $STABLE_VERSION
    rsvm use $STABLE_VERSION
fi

cargo install cargo-edit
cargo install xsv

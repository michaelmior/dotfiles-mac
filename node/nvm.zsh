export NVM_DIR="$HOME/.nvm"
nvm() {
    . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
}

export PATH="$NVM_DIR/versions/node/v6.0.0/bin:$PATH"
export MANPATH="$NVM_DIR/versions/node/v6.0.0/share/man:$MANPATH"

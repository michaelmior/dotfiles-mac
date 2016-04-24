export NVM_DIR="$HOME/.nvm"
nvm() {
    . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
}

export PATH="$NVM_DIR/versions/node/v5.11.1/bin:$PATH"
export MANPATH="$NVM_DIR/versions/node/v5.11.0/share/man:$MANPATH"

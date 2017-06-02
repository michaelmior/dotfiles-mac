export NVM_DIR="$HOME/.nvm"
nvm() {
    . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
}

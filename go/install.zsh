if [ ! -d ~/.gvm ]; then
    GVM_NO_GIT_BAK=1
    GVM_NO_UPDATE_PROFILE=1
    SRC_REPO=$DOTFILES_ROOT/go/gvm $DOTFILES_ROOT/go/gvm/binscripts/gvm-installer
    gvm version > /dev/null 2>&1 || source /home/mmior/.gvm/scripts/gvm
    gvm install release
fi

if [ ! -d ~/.gvm ]; then
    GVM_NO_GIT_BAK=1
    GVM_NO_UPDATE_PROFILE=1
    SRC_REPO=$HOME/.dotfiles/go/gvm $HOME/.dotfiles/go/gvm/binscripts/gvm-installer
    gvm version > /dev/null 2>&1 || source $HOME/.gvm/scripts/gvm
    gvm install go1.4.3 --prefer-binary
    gvm use go1.4.3
    gvm install go1.7.5 --prefer-binary
fi

source ~/.gvm/scripts/gvm
gvm use go1.7.5

go get -u github.com/ericchiang/pup
go get -u github.com/ichinaski/pxl
go get -u github.com/aykamko/tag
go get -u github.com/asciimoo/wuzz

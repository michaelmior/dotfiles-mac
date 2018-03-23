if [ ! -d ~/n ]; then
    which npm
    if [ $? -eq 0 ]; then
      npm install -g n
    else
      curl -L https://git.io/n-install | bash -s -- -y -n
    fi
    source $HOME/.dotfiles/node/path.zsh
fi

n stable

npm set progress=false
npm install -g yarn --loglevel=warn
(cd $HOME/.dotfiles/node && yarn)
npm set progress=true

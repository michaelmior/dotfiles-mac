source $HOME/.nvm/nvm.sh
nvm install v5.2.0
nvm alias default $(nvm current)
(cd $HOME/.dotfiles/node && npm install -g)

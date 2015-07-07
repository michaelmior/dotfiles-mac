source $HOME/.nvm/nvm.sh
nvm install 0.12
nvm alias default $(nvm current)
(cd $HOME/.dotfiles/node && npm install -g)

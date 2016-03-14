source $HOME/.nvm/nvm.sh
nvm install v5.6.0
nvm alias default $(nvm current)

npm set progress=false
(cd $HOME/.dotfiles/node && npm install -g)
npm set progress=true

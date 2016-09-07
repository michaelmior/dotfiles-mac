source $HOME/.nvm/nvm.sh
nvm install v6.4.0 > /dev/null
nvm alias default $(nvm current)

npm set progress=false
(cd $HOME/.dotfiles/node && npm install --loglevel=warn)
npm set progress=true

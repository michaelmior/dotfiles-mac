source $HOME/.nvm/nvm.sh
nvm install v7.4.0 > /dev/null
nvm alias default $(nvm current)
npm config delete prefix

npm set progress=false
(cd $HOME/.dotfiles/node && npm install --loglevel=warn)
npm set progress=true

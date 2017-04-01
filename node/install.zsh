source $HOME/.nvm/nvm.sh

if nvm alias default 2> /dev/null | grep -vq none; then
  nvm use --delete-prefix default
fi

nvm install v7.4.0 > /dev/null
nvm use --delete-prefix v7.4.0
nvm alias default $(nvm current)
npm config delete prefix

npm set progress=false
npm install -g yarn --loglevel=warn
(cd $HOME/.dotfiles/node && yarn)
npm set progress=true

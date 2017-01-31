source $HOME/.nvm/nvm.sh

if nvm alias default 2> /dev/null | grep -vq none; then
  nvm use --delete-prefix default
fi

nvm install v7.4.0 > /dev/null
nvm use --delete-prefix v7.4.0
nvm alias default $(nvm current)
npm config delete prefix

npm set progress=false
(cd $HOME/.dotfiles/node && npm install --loglevel=warn)
npm set progress=true

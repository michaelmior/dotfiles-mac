source python/path.zsh
eval "$(pyenv init -)"

pyenv install -s 2.7.10
pyenv install -s 3.4.3
pyenv global 2.7.10

pip install virtualenv
pip install pipsi
pyenv rehash

pipsi --bin-dir=$HOME/bin install cqlsh
pipsi --bin-dir=$HOME/bin install csvkit
pipsi --bin-dir=$HOME/bin install httpie
pipsi --bin-dir=$HOME/bin install Pygments

source python/path.zsh
eval "$(pyenv init -)"

pyenv install -s 2.7.10
pyenv install -s 3.4.3
pyenv global 2.7.10

pip install --quiet --upgrade virtualenv
pip install --quiet --upgrade pipsi
pyenv rehash

[[ -d ~/.local/venvs/cqlsh ]] || pipsi --bin-dir=$HOME/bin install cqlsh
[[ -d ~/.local/venvs/csvkit ]] || pipsi --bin-dir=$HOME/bin install csvkit
[[ -d ~/.local/venvs/httpie ]] || pipsi --bin-dir=$HOME/bin install httpie
[[ -d ~/.local/venvs/pip-tools ]] || pipsi --bin-dir=$HOME/bin install pip-tools
[[ -d ~/.local/venvs/pygments ]] || pipsi --bin-dir=$HOME/bin install Pygments

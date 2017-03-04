source python/path.zsh
eval "$(pyenv init -)"

pyenv install -s 2.7.11
pyenv install -s 3.6.0
pyenv global 2.7.11

export PIP_CONFIG_FILE=~/.dotfiles/python/pip.conf
export VIRTUALENV_QUIET=1

pip install --upgrade pip
pip install --upgrade virtualenv
pip install --upgrade pipsi
pyenv rehash

function pipsi_install {
  [[ -d ~/.local/venvs/$2 ]] || pipsi --bin-dir=$HOME/bin install $1
}

pipsi_install cqlsh cqlsh
pipsi_install csvkit csvkit
pipsi_install httpie httpie
pipsi_install httpstat httpstat
pipsi_install pip-tools pip-tools
pipsi_install Pygments pygments
pipsi_install shyaml shyaml

unset PIP_CONFIG_FILE
unset VIRTUALENV_QUIET

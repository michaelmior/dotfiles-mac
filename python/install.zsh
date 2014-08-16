install_files 'dotfiles' "`find $DOTFILES_ROOT -maxdepth 2 -name \*.symlink`" "$HOME/.\$source"
install_files 'binaries' "`find $DOTFILES_ROOT -mindepth 2 -maxdepth 3 -path '*/bin/*'`" "$HOME/bin/\$source"

pyenv install -s 2.7.6
pyenv install -s 3.4.0
pyenv global 2.7.6

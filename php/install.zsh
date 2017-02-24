if [[ ! -e $HOME/bin/composer ]]; then
  wget --quiet -O $HOME/bin/composer https://getcomposer.org/composer.phar
  chmod +x $HOME/bin/composer
fi

composer self-update

if [[ ! -e $HOME/bin/composer ]]; then
  wget --quiet -O $HOME/bin/composer https://getcomposer.org/composer.phar
  chmod +x $HOME/bin/composer
fi

$HOME/bin/composer self-update

function composer_install {
  $HOME/bin/composer global require $1
}

composer_install mkusher/padawan

if [[ ! -e ~/bin/lein ]]; then
  wget -O $HOME/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
  chmod +x $HOME/bin/lein
fi

if [[ ! -e ~/bin/boot ]]; then
  wget -O $HOME/bin/boot https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh
  chmod +x $HOME/bin/boot
fi

yes | $HOME/bin/lein upgrade

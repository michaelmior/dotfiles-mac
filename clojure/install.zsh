if [[ ! -e ~/bin/lein ]]; then
  wget -O $HOME/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
  chmod +x $HOME/bin/lein
fi

yes | lein upgrade

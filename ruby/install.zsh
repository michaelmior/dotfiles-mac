if [ ! -x ~/.rvm/scripts/rvm ]; then
    gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    ./ruby/rvm-installer
    source ~/.rvm/scripts/rvm
    rvm install --quiet-curl 2.4
    rvm --default use 2.4
fi

gem install -q \
    rubocop \
    travis

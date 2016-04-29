if [ ! -x ~/.rvm/scripts/rvm ]; then
    ./ruby/rvm-installer
    source ~/.rvm/scripts/rvm
    rvm install 2.3
    rvm --default use 2.3
fi

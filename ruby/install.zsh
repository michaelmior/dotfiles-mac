if [ ! -x ~/.rvm/scripts/rvm ]; then
    ./ruby/rvm-installer
    source ~/.rvm/scripts/rvm
    rvm install 1.9.3,2.1
    rvm --default use 2.1
fi

gem install bundler
bundle install --gemfile=~/.dotfiles/ruby/Gemfile

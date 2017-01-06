FROM ubuntu@16.10
MAINTAINER Michael Mior <michael.mior@gmail.com>

RUN locale-gen en_US.UTF-8
RUN apt-get update -qq && \
    apt-get install -qq \
      autoconf \
      build-essential \
      bison \
      flex \
      cabal-install \
      curl \
      ed \
      git \
      gnupg2 \
      libbz2-dev \
      libc6-dev \
      libncurses-dev \
      libreadline-dev \
      libssl-dev \
      libsqlite3-dev \
      libtool \
      libyaml-dev \
      libxml2 \
      ncurses-dev \
      openssl \
      python \
      sudo \
      tmux \
      vim-nox \
      zlib1g-dev \
      zsh \
    && apt-get clean

RUN useradd -s /bin/zsh tester
ADD . /home/tester/.dotfiles
RUN chown -R tester:tester /home/tester && \
    echo 'tester ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/tester && \
    chmod 0440 /etc/sudoers.d/tester
USER tester

ENV HOME /home/tester
ENV TMUX y
ENV GIT_AUTHOR_NAME Michael Mior
ENV GIT_AUTHOR_EMAIL michael.mior@gmail.com

WORKDIR /home/tester/.dotfiles
RUN git submodule update --init
RUN ./script/install

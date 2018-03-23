#!/bin/bash

brew install \
    bison \
    editorconfig \
    flex \
    cabal-install \
    curl \
    dirmngr \
    git \
    gnupg2 \
    jq \
    opam \
    openssl \
    php \
    python \
    racket \
    tmux \
    vim \
    wget \
    zsh \
    binutils \
    diffutils \
    readline \
    xz

brew install --with-default-names \
    gnu-sed \
    gnu-tar \
    gnu-which \
    coreutils \
    findutils \
    grep \
    ed

brew tap caskroom/cask

brew cask install \
    java \
    mactex

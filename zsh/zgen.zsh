#!/bin/zsh

source "$HOME/.dotfiles/zsh/zgen/zgen.zsh"

zgen oh-my-zsh

zgen oh-my-zsh plugins/bundler
zgen oh-my-zsh plugins/debian
zgen oh-my-zsh plugins/django
zgen oh-my-zsh plugins/git
zgen oh-my-zsh plugins/go
zgen oh-my-zsh plugins/grunt
zgen oh-my-zsh plugins/nmap
zgen oh-my-zsh plugins/pep8
zgen oh-my-zsh plugins/pip
zgen oh-my-zsh plugins/pj
zgen oh-my-zsh plugins/python
zgen oh-my-zsh plugins/sudo

zgen oh-my-zsh themes/muse

zgen load zsh-users/zsh-syntax-highlighting
zgen load zsh-users/zsh-completions src
zgen load micha/resty

zgen save

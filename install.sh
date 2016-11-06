#!/bin/bash

sudo apt-get remove vim vim-runtime gvim vim-tiny vim-common vim-gui-common vim-nox
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo add-apt-repository ppa:aacebedo/fasd
sudo apt-get update

packages=(
  gawk
  git
  zsh
  libncurses5-dev
  libgnome2-dev
  libgnomeui-dev
  libgtk2.0-dev
  libatk1.0-dev 
  libbonoboui2-dev
  libcairo2-dev
  libx11-dev
  libxpm-dev
  libxt-dev
  python-dev
  python3-dev
  python-pip
  python3-pip
  ruby-dev
  lua5.1
  lua5.1-dev
  libperl-dev
  checkinstall
  xclip
  realpath
  tmux
  fasd
  neovim
)

sudo apt-get install ${packages[@]}

sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

sudo gem install tmuxinator

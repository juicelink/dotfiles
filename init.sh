#!/bin/zsh

if [ ! "$SHELL" = "/bin/zsh" ]; then
  chsh -s /bin/zsh
fi

git submodule init
git submodule update

cd ${0%/*}

fonts/install.sh

dotfiles=(
    .zshrc
)

dir=$(pwd | sed -e "s%$HOME/%%g")
ln -sf $(echo ${dotfiles[@]} | sed -e "s%^%$dir/%g" -e "s% % $dir/%g") ~

. ~/.zshrc

#!/bin/zsh

if [ ! "$SHELL" = "/bin/zsh" ]; then
  sudo chsh -s /bin/zsh
fi

cd ${0%/*}
curDir=`pwd`

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.config/nvim/dein
rm -f installer.sh

ln -sf $curDir/.zshrc ~/.zshrc
mkdir -p ~/.config/nvim
ln -sf $curDir/init.vim ~/.config/nvim/init.vim

. ~/.zshrc

#!/bin/zsh

if [ ! "$SHELL" = "/bin/zsh" ]; then
  sudo chsh -s /bin/zsh
fi

fontsDir=~/.local/share/fonts
mkdir -p $fontsDir
#curl -fLo $fontsDir/"DejaVu Sans Mono for Powerline Nerd Font Complete.ttf" "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.ttf?raw=true"
curl -fLo $fontsDir/"SourceCodePro Powerline Awesome Regular.ttf" "https://github.com/gabrielelana/awesome-terminal-fonts/blob/patching-strategy/patched/SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf?raw=true"

fc-cache -f $fontsDir

cd ${0%/*}
curDir=`pwd`

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.config/nvim/dein
rm -f installer.sh

ln -sf $curDir/.zshrc ~/.zshrc
mkdir -p ~/.config/nvim
ln -sf $curDir/init.vim ~/.config/nvim/init.vim

. ~/.zshrc

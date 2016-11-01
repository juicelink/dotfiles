dir=$(dirname "$(realpath ~/.zshrc)")

setopt autopushd pushdminus pushdsilent pushdtohome pushdignoredups

#autoenv
. `which activate.sh`

. $dir/zsh/aliases
. $dir/zsh/powerlevel9k
. $dir/zsh/zplug

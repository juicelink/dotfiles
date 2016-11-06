dir=$(dirname "$(realpath ~/.zshrc)")

. $dir/zsh/aliases
. $dir/zsh/zplug

# persist stack
if [[ -f ~/.zdirs ]] && [[ ${#dirstack[*]} -eq 0 ]]; then
    echo "\n" >> ~/.zdirs
    dirstack=( ${(uf)"$(< ~/.zdirs)"//"$HOME"[[:space:]]/} )
fi

function _persist_dirstack {
    dirs -pl >! ~/.zdirs
}

autoload -Uz add-zsh-hook
add-zsh-hook chpwd _persist_dirstack

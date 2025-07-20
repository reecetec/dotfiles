# prompt
PS1="%B[%n %M %~] $%b "

# autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)


. "$HOME/.local/bin/env"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vim=nvim
alias vi=nvim

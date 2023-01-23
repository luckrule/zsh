function zle-line-init() { echoti smkx }
function zle-line-finish() { echoti rmkx }
zle -N zle-line-init
zle -N zle-line-finish
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey -e
bindkey -M emacs "${terminfo[khome]}" beginning-of-line
bindkey -M emacs "${terminfo[kend]}" end-of-line
bindkey -M emacs "${terminfo[kpp]}" up-line-or-history
bindkey -M emacs "${terminfo[knp]}" down-line-or-history
bindkey -M emacs "${terminfo[kcuu1]}" up-line-or-beginning-search
bindkey -M emacs "${terminfo[kcud1]}" down-line-or-beginning-search
bindkey -M emacs "${terminfo[kcbt]}" reverse-menu-complete
bindkey -M emacs "${terminfo[kdch1]}" delete-char

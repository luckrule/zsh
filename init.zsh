for base ($ZDOTDIR/bases/*.zsh); do
  source $base
done

source $ZDOTDIR/theme
source ${ZINIT_HOME}/zinit.zsh

zinit light Aloxaf/fzf-tab
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions

compinit
zinit cdreplay -q

eval "$(zoxide init zsh)"

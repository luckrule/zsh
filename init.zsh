eval "$(zoxide init zsh)"

for base ($ZDOTDIR/bases/*.zsh); do
  source $base
done

for plugin (`ls $ZDOTDIR/plugins`); do
  fpath+=($ZDOTDIR/plugins/$plugin)
  source $ZDOTDIR/plugins/$plugin/$plugin.plugin.zsh
done

source $ZDOTDIR/theme

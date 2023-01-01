for lib ($ZDOTDIR/libs/*.zsh); do
  source $lib
done

for base ($ZDOTDIR/bases/*.zsh); do
  source $base
done

for plugin (`ls $ZDOTDIR/plugins`); do
  fpath+=($ZDOTDIR/plugins/$plugin)
  source $ZDOTDIR/plugins/$plugin/$plugin.plugin.zsh
done

if [[ -f $ZDOTDIR/themes/$THEME ]]; then
  source $ZDOTDIR/themes/$THEME
fi

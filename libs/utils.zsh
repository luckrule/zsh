function autoloadAndRun() {
  autoload -U $1 && $1
}

function zle-line-init() {
  echoti smkx
}

function zle-line-finish() {
  echoti rmkx
}

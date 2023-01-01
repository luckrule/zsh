function autoloadAndRun() {
  autoload -U $1 && $1
}

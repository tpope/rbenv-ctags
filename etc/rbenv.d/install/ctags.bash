if declare -Ff after_install >/dev/null; then
  after_install generate_ctags
fi

generate_ctags() {
  rbenv-ctags "$VERSION_NAME"
}

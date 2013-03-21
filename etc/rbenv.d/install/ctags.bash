if declare -Ff after_install >/dev/null; then
  after_install generate_ctags
fi

generate_ctags() {
  if [ "$STATUS" -eq 0 ]; then
    rbenv-ctags "$VERSION_NAME"
  fi
}

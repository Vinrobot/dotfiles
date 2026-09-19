#!/usr/bin/env zsh

set -eu

DIR="${0:A:h}"

link() {
  source="$DIR/$1"
  target="$2"

  error="$(ln -rsT "$source" "$target" 2>&1 >/dev/null)" && {
    >&2 echo "LINKED  $target -> $source"
    return
  }

  if [ -L "$target" ] && [ "$(readlink -f "$target")" = "$(readlink -f "$source")" ]; then
    >&2 echo "OK      $target -> $source"
    return
  fi

  >&2 echo "ERROR: $error"
  exit 1
}

link "config/git" "$HOME/.config/git"
link "config/zsh" "$HOME/.config/zsh"
link "config/wget" "$HOME/.config/wget"
link "config/helix" "$HOME/.config/helix"
link "config/zsh/.zshenv" "$HOME/.zshenv"

>&2 echo "Done."

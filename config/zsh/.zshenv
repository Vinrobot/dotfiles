export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"

export ZDOTDIR="${ZDOTDIR:-$XDG_CONFIG_HOME/zsh}"

export KREW_ROOT="${KREW_ROOT:-$XDG_DATA_HOME/krew}"

export KUBECACHEDIR="${XDG_CACHE_HOME}/kube"

export WGETRC="${XDG_CONFIG_HOME}/wget/wgetrc"

export PATH="${HOME}/.local/bin:${KREW_ROOT}/bin:${PATH}"

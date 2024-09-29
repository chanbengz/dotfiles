# If you come from bash you might have to change your $PATH.
PATH="/opt/homebrew/bin:/opt/homebrew/local/bin:$PATH"
PATH="/Users/chanben/.local/bin:$PATH"
PATH="/opt/tools/:$PATH"
PATH="/Users/chanben/.cargo/bin/:$PATH"
PATH="/opt/homebrew/opt/gawk/libexec/gnubin:$PATH"
PATH="/opt/homebrew/opt/m4/bin:$PATH"
PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"
PATH="/opt/homebrew/opt/scala@2.13/bin:$PATH"
PATH="/opt/homebrew/opt/bison/bin:$PATH"
PATH="/Users/chanben/.ghcup/bin:$PATH"
export PATH

# jenv
PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Path to your oh-my-zsh installation.
export ZSH="/Users/chanben/.oh-my-zsh";
source <(fzf --zsh)

# GnuPG Setting
unset GPG_TTY
export GPG_TTY=$(TTY)

# Theme
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE=true

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
    git
    autojump
    zsh-autosuggestions
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG="en_US.UTF-8" 
export LC_ALL="en_US.UTF-8" 
export LC_CTYPE="en_US.UTF-8"

# Preferred editor for local and remote sessions
export EDITOR='nvim'

# C Libraries
export ARCHFLAGS="-arch arm64"
export C_INCLUDE_PATH="/opt/homebrew/opt/openssl@3/include"
export C_INCLUDE_PATH="/opt/homebrew/opt/flex/include:$C_INCLUDE_PATH"

export LIBRARY_PATH="/opt/homebrew/opt/openssl@3/lib"
export LIBRARY_PATH="/opt/homebrew/opt/flex/lib:$LIBRARY_PATH"

# SSH
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Alias
alias vim=nvim
alias lazy=lazygit
alias ll="lsd -alhF"
alias c="clear"
alias python="python3"

# Shell Wrappers
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"

# Proxy
# cmd: set proxy
proxy () {
  export http_proxy="http://127.0.0.1:7897"
  export https_proxy="http://127.0.0.1:7897"
}

# cmd: unset proxy
noproxy () {
  unset http_proxy
  unset https_proxy
  echo "HTTP Proxy Off."
}

# cmd: show proxy
show_proxy () {
  echo "http_proxy: $http_proxy"
  echo "https_proxy: $https_proxy"
}

# proxy by default
proxy

# EOF

export STM32_PRG_PATH=/Applications/STMicroelectronics/STM32Cube/STM32CubeProgrammer/STM32CubeProgrammer.app/Contents/MacOs/binexport PATH="/opt/homebrew/opt/ruby/bin:$PATH"

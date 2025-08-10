if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export DEV_CONFIG="$HOME/dev/dotfiles"
export DEV="$HOME/dev/personal"

ZSH_THEME="geoffgarside"
# ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions poetry zsh-syntax-highlighting fzf-tab)

source $ZSH/oh-my-zsh.sh
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward


fzf_nvim_tmux() {
  local selected
  selected=$(cd ~/dev/personal && \
    find . -type f \
      -not -path '*/\.git/*' \
      -not -path '*/node_modules/*' \
      | fzf)
  [[ -z "$selected" ]] && return
  selected="${selected#./}"
  nvim ~/dev/personal/"$selected"
}

zle -N fzf_nvim_tmux
bindkey '^P' fzf_nvim_tmux

# HISTORY
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-Z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always --icons=always --hyperlink $realpath'
zstyle ':fzf-tab:*' fzf-flags --color=fg:1,fg+:2 --bind=tab:accept
zstyle ':fzf-tab:*' use-fzf-default-opts yes
zstyle ':fzf-tab:*' switch-group '<' '>'


eval "$(fzf --zsh)"

  

fpath+=~/.zfunc
autoload -Uz compinit && compinit
  
  # export ANDROID_HOME=$HOME/Android
  # export ANDROID_HOME="/mnt/c/Users/cadie/AppData/Local/Android/Sdk"
  # export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
  # export PATH="$PATH:$ANDROID_HOME/platform-tools"
  # export PATH="$PATH:$ANDROID_HOME/build-tools/35.0.0"
  # export PATH="$PATH:$ANDROID_HOME/emulator"
  # export WSLENV=ANDROID_HOME/p

export XDG_CONFIG_HOME="$HOME/.config"

# fzf-tab
autoload -U compinit; compinit
source $ZSH_CUSTOM/plugins/fzf-tab/fzf-tab.plugin.zsh
source $HOME/.config/zsh/aliases.zsh

  # yazi
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

  # export PATH="$PATH:/home/cipherdev/android-sdk/cmdline-tools/latest/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2024-12-14 05:05:43
export PATH="$PATH:/home/cipherdev/.local/bin"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

fastfetch

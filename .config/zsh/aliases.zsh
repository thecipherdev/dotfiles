# hyprland related
alias hyprs="source ${HOME}/.config/hypr/hyprland.conf"
alias hyprreload="hyprctl reload"
alias wybrreload="pkill -SIGUSR2 waybar"

# theme
alias look="nwg-look"

# vim 
alias vim="nvim"
alias mvim="vim | fzf"

# command
alias enblssh="eval \"$(ssh-agent -s)\""
alias ls="eza --icons=always --hyperlink"
alias lst="eza --icons=always -T --hyperlink"
alias python="python3"
alias c="clear"


# project folders 
alias wapps="cd ${HOME}/dev/personal/code/frontend/web"
alias mapps="cd ${HOME}/dev/personal/code/frontend/mobile"
alias backend="cd ${HOME}/dev/personal/code/backend"


# git aliases
alias gi="git init"
alias ga="git add"
alias gs="git status --short"
alias gc="git commit"
alias gp="git push"
alias gu="git pull"
alias gd="git diff"
alias gl="git log --oneline"
alias gb="git branch"
alias gcl="git clone"

# tmux
# alias tmux="tmux -f ${HOME}/.config/tmux/.tmux.conf"
alias tconfig="nvim $DEV_CONFIG/.config/tmux/tmux.conf"
alias tsource="tmux source $DEV_CONFIG/.config/tmux/tmux.conf"


# config
alias zconfig="cd ${DEV_CONFIG}/.config/zsh && nvim ${HOME}/.config/zsh/.zshrc"
alias zsource="source ${DEV_CONFIG}/.config/zsh/.zshrc"
alias hyprc="cd ${DEV_CONFIG}/.config/hypr && nvim ${DEV_CONFIG}/.config/hypr/hyprland.conf"

# function aliases
copy() {
  cat "$1" | xclip -selection clipboard
}

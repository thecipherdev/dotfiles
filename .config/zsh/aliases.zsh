# hyprland related
alias hyprs="source ${HOME}/.config/hypr/hyprland.conf"
alias hyprreload="hyprctl reload"
alias wybrreload="pkill -SIGUSR2 waybar"

# theme
alias look="nwg-look"

# vim 
alias vi="nvim"
alias mvim="vim | fzf"

# command
alias enblssh="eval \"$(ssh-agent -s)\""
alias ls="eza --icons=always --hyperlink --git-ignore"
alias lst="eza --icons=always -T --hyperlink --git-ignore"
alias python="python3"
alias c="clear"
alias oc="opencode"


# project folders 
alias wapps="cd ${HOME}/dev/personal/code/frontend/web"
alias mapps="cd ${HOME}/dev/personal/code/frontend/mobile"
alias backend="cd ${HOME}/dev/personal/code/backend"
alias work="cd ${HOME}/dev/work"
alias gfed="cd ${HOME}/dev/work/gfed"
alias wt="cd ${DEV}/wt"

# open links
alias ol="cut -d= -f1 '${DEV_CONFIG}/.config/zsh/links' | fzf | xargs -I{} sh -c \"grep '^{}=' '${DEV_CONFIG}/.config/zsh/links' | cut -d= -f2 | xargs xdg-open\""

#DB
pdb() {
  psql -U "$1" -W
}


# git aliases
alias gi="git init"
alias ga="git add"
alias gs="git status --short"
alias gc="git commit"
alias gp="git push"
alias gu="git pull"
alias gwl="git worktree list"
alias gwa="git worktree add"
alias gwr="git worktree remove"
alias gd="git diff"
alias gl="git log --all --graph --decorate --oneline"
alias gb="git branch"
alias gcl="git clone"

alias grb-preview='git branch --format="%(refname:short)" | grep -v "^main$"'
alias grb='git branch --format="%(refname:short)" | grep -v "^main$" | xargs -r git branch -d'
# danger
grb_force() {
  branches=$(git branch --format="%(refname:short)" | grep -v "^main$")

  if [[ -z "$branches" ]]; then
    echo "No local branches to delete."
    return 0
  fi

  echo "⚠️  The following local branches will be DELETED:"
  echo "$branches"
  echo
  read "confirm?Are you sure? (y/N): "

  if [[ "$confirm" =~ ^[Yy]$ ]]; then
    echo "$branches" | xargs git branch -D
    echo "✅ Done."
  else
    echo "❌ Aborted."
  fi
}

# tmux
# alias tmux="tmux -f ${HOME}/.config/tmux/.tmux.conf"
alias tconfig="nvim $DEV_CONFIG/.config/tmux/tmux.conf"
alias tsource="tmux source $DEV_CONFIG/.config/tmux/tmux.conf"


# config
alias zconfig="cd ${DEV_CONFIG}/.config/zsh && nvim ${DEV_CONFIG}/.config/zsh/.zshrc"
alias zsource="source ${DEV_CONFIG}/.config/zsh/.zshrc"
alias hyprc="cd ${DEV_CONFIG}/.config/hypr && nvim ${DEV_CONFIG}/.config/hypr/hyprland.conf"

# function aliases
copy() {
  cat "$1" | xclip -selection clipboard
}

# Git Aliae(?)
alias ga='git add'
alias gaa='git add -A'
alias gaac='git add -A && git commit'
alias gb='git branch'
alias gc='git commit'
alias gcf='git clean -f'
alias gcl='git clone'
alias gcn='git commit --no-verify'
alias gcv='git commit --no-verify'
alias gd='git diff'
alias gf='git fetch'
alias gfo='git fetch origin'
alias gh='git hist'
alias gl1='git log --oneline'
alias gl='git log --graph --decorate'
alias gls='git log --oneline --stat'
alias gm='git merge'
alias gmt='git mergetool'
alias go='git checkout'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gppo='git pull origin'
alias gppom='git pull origin master'
alias grc='git rebase --continue'
alias grm='git rebase master'
alias grs='git rebase --skip'
alias gs='git status'

# use colordiff as default diff tool
alias diff=colordiff

# Fabric
alias fsd='fab stage deploy:branch=stage'

alias top3="ps aux | sort -k3 -r | head -n 3 | awk '{ print$3, \" \",  $11  }'"
alias myip="ifconfig | grep inet | tail -n 1 | awk '{ print $2 }'"
alias gbh=git_branch_history


# Key bindings
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

autoload -U zmv
DISABLE_AUTO_TITLE=true


# Use vi keymap
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M viins '^s' history-incremental-search-forward
bindkey -M viins '^u' history-beginning-search-backward
bindkey -M viins '^e' history-beginning-search-forward
bindkey -M vicmd '^R' history-incremental-search-backward
bindkey -M vicmd 'u' history-beginning-search-backward
bindkey -M vicmd 'e' history-beginning-search-forward
bindkey -M vicmd 'i' vi-forward-char
bindkey -M vicmd 'n' vi-backward-char
bindkey -M vicmd 'l' vi-backward-word
bindkey -M vicmd 'y' vi-forward-word
bindkey -M vicmd 'T' vi-change-eol
bindkey -M vicmd 'S' vi-add-eol
bindkey -M vicmd 'R' vi-insert-bol
bindkey -M vicmd 'r' vi-insert
bindkey -M vicmd 's' vi-add-next
bindkey -M vicmd 't' vi-change

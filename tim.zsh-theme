PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# Git Aliae(?)
alias gs='git status'
alias gl='git log --graph --decorate'
alias go='git checkout'
alias gc='git commit'
alias gcv='git commit --no-verify'
alias gb='git branch'
alias gm='git merge'
alias ga='git add'
alias gaa='git add -A'
alias gaac='git add -A && git commit'
alias gd='git diff'
alias gl1='git log --oneline'
alias gls='git log --oneline --stat'
alias gpo='git push origin'
alias gpom='git push origin master'
alias grm='git rebase master'
alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias gmt='git mergetool'
alias gfo='git fetch origin'
alias gcf='git clean -f'
alias gcl='git clone'


# Fabric
alias fsd='fab stage deploy:branch=stage'

# Customize to your needs...
export EDITOR=vim
export GIT_EDITOR=vim

alias top3="ps aux | sort -k3 -r | head -n 3 | awk '{ print$3, \" \",  $11  }'"
alias myip="ifconfig | grep inet | tail -n 1 | awk '{ print $2 }'"

# Key bindings
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

export TERM=xterm-256color

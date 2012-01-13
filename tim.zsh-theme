PROMPT='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

alias gs='git status'
alias gl='git log --graph --decorate'
alias gc='git checkout'
alias gco='git commit'
alias gb='git branch'
alias gm='git merge'
alias ga='git add'
alias gd='git diff'
alias gl1='git log --oneline'
alias gls='git log --oneline --stat'

# Customize to your needs...
export EDITOR=vim
export GIT_EDITOR=vim

# Key bindings
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward


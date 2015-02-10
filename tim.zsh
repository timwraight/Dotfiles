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
# Get next unmerged file (u for unmerged)
# crazy escaping needed for awk
alias gu='gs --porcelain | grep UU | head -1 | awk '"'"'{print $2}'"'"''

# use colordiff as default diff tool
alias diff=colordiff

# Fabric
alias fsd='fab stage deploy:branch=stage'

alias top3="ps aux | sort -k3 -r | head -n 3 | awk '{ print$3, \" \",  $11  }'"
alias myip="ifconfig | grep inet | tail -n 1 | awk '{ print $2 }'"
alias gbh=git_branch_history
alias p="ps aux | grep -i"
alias pipfind="pip freeze | grep -i"


# Key bindings
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward
bindkey '^[u' history-beginning-search-backward
bindkey '^[e' history-beginning-search-forward
bindkey '^[i' forward-word
bindkey '^[n' backward-word
bindkey '^[N' backward-char
bindkey '^[I' forward-char
bindkey '^[D' delete-char
bindkey '^[k' kill-line
bindkey '^[a' beginning-of-line

autoload -U zmv
DISABLE_AUTO_TITLE=true


# Use vi keymap
bindkey -M viins '^[r' history-incremental-search-backward
bindkey -M viins '^[s' history-incremental-search-forward
bindkey -M viins '^[u' history-beginning-search-backward
bindkey -M viins '^[e' history-beginning-search-forward
bindkey -M viins '^[i' forward-word
bindkey -M viins '^[n' backward-word
bindkey -M vicmd '^[i' forward-word
bindkey -M vicmd '^[n' backward-word
bindkey -M vicmd 'u' history-beginning-search-backward
bindkey -M vicmd 'e' history-beginning-search-forward
bindkey -M vicmd 'i' vi-forward-char
bindkey -M vicmd 'n' vi-backward-char
bindkey -M vicmd '^[n' vi-backward-word
bindkey -M vicmd '^[i' vi-forward-word
bindkey -M vicmd 'T' vi-change-eol
bindkey -M vicmd '^[Y' vi-add-eol
bindkey -M vicmd 'Y' vi-insert-bol
bindkey -M vicmd 'y' vi-insert
bindkey -M vicmd '^[y' vi-add-next
bindkey -M vicmd 't' vi-change


# Get ip address easily
alias getip='ipconfig getifaddr en1'

# DOCKER

alias clean-images='docker rmi $(docker images -q --filter "dangling=true")'

alias dp='docker ps | less -S'
alias dk='docker kill'
alias de='docker exec -it'
alias di='docker images'
alias drmi='docker rmi'
alias dl='docker logs'


# Add these functions to your ~/.bashrc in order to be able to query private
# Docker registries from the commandline. You'll need the JQ library
# (http://stedolan.github.io/jq/) to be installed. Alternatively, you can just
# pipe to " python -mjson.tool" to get pretty JSON formatting

# TODO Enter the correct details here
# DOCKER_REGISTRY_HOST=XXX
# DOCKER_REGISTRY_AUTH=XXX

# DOCKER_STAGE_HOST=XXX
# DOCKER_STAGE_AUTH=XXX

export LESS='-R -S'

# PROD

function _docker_fetch() {
    echo $1
    curl -s --user $DOCKER_REGISTRY_AUTH $1 | jq '.'
}

# List repos (query string is optional)
function docker_live_search() {
    _docker_fetch https://$DOCKER_REGISTRY_HOST/v1/search?q=$1
}

# List tags for a repo
function docker_live_tags() {
    _docker_fetch https://$DOCKER_REGISTRY_HOST/v1/repositories/$1/tags
}

# STAGE

function _docker_stage_fetch() {
    echo $1
    curl -s --user $DOCKER_STAGE_AUTH $1 | jq '.'
}

# List repos (query string is optional)
function docker_stage_search() {
    if [ -z "$1" ]; then
        QUERY_STRING=""
    else
        QUERY_STRING=$1
    fi
    _docker_stage_fetch "https://$DOCKER_STAGE_HOST/v1/search?q=$QUERY_STRING"
}

# List tags for a repo
function docker_stage_tags() {
    _docker_stage_fetch https://$DOCKER_STAGE_HOST/v1/repositories/$1/tags
}
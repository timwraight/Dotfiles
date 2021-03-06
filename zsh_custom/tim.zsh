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
bindkey '^[l' backward-char
bindkey '^[y' forward-char
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


function retry() {
    # Retry command ($1) every $2 seconds
    echo "Retrying $@ every five seconds"
    until $@ ; do
        echo "Will try again in five seconds...($(date +%H:%M:%S))"
        sleep 5
    done
}



# DOCKER

alias clean-images='docker rmi -f $(docker images -q --filter "dangling=true")'

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
    curl -s --user $DOCKER_REGISTRY_AUTH $1 
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
    curl -s --user $DOCKER_STAGE_AUTH $1
}

# List repos (query string is optional)
function docker_stage_search() {
    _docker_stage_fetch "https://$DOCKER_STAGE_HOST/v2/search?q=$QUERY_STRING"
}

# List tags for a repo
function docker_stage_tags() {
    _docker_stage_fetch https://$DOCKER_STAGE_HOST/v2/repositories/$1/tags
}

export PAGER=less
export LESS="-eS"


# USEFUL WEE ONE-LINERS

# Awk: group by some field, and increment an index every time it occurs
# cat mail.log mail.log.1 | awk '{ /status=sent/ days[$1$2]++ } END { for (day in days) print day, days[day]} ' | sort

eval "$(fasd --init auto)"
alias j=z


function tab_title {
    echo -ne "\033]0;"$*"\007"
}

# Invoke (pyinvoke.org) tab-completion script to be sourced with the Z shell.
# Known to work on zsh 5.0.x, probably works on later 4.x releases as well (as
# it uses the older compctl completion system).

_complete_invoke() {
    # `words` contains the entire command string up til now (including
    # program name).
    #
    # We hand it to Invoke so it can figure out the current context: spit back
    # core options, task names, the current task's options, or some combo.
    #
    # Before doing so, we attempt to tease out any collection flag+arg so we
    # can ensure it is applied correctly.
    collection_arg=''
    if [[ "${words}" =~ "(-c|--collection) [^ ]+" ]]; then
        collection_arg=$MATCH
    fi
    # `reply` is the array of valid completions handed back to `compctl`.
    # Use ${=...} to force whitespace splitting in expansion of $collection_arg
    reply=( $(invoke ${=collection_arg} --complete -- ${words}) )
}


# Tell shell builtin to use the above for completing 'inv'/'invoke':
# * -K: use given function name to generate completions.
# * +: specifies 'alternative' completion, where options after the '+' are only
#   used if the completion from the options before the '+' result in no matches.
# * -f: when function generates no results, use filenames.
# * positional args: program names to complete for.
compctl -K _complete_invoke + -f inv invoke

set PATH ~/bin /usr/local/bin /usr/bin /usr/sbin /bin 

function fish_user_key_bindings
         bind \ei nextd-or-forward-word
         bind \en prevd-or-backward-word
         bind \ex delete-char
         bind \ey history-token-search-backward

         bind \eu up-or-search
         bind \ee down-or-search
         bind \ek kill-line
         bind \ed kill-word
         bind \ea beginning-of-line
         bind \ey end-of-line
end

alias ec="emacsclient -nw"
alias ec="emacsclient -nw"
alias p="ps aux | grep -i"
alias diff=colordiff
# Git Aliae(?)
alias ga='git add'
alias gaa='git add -A'
alias gaac='git add -A and git commit'
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
alias gpu='git push -u origin'
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

set -x PAGER less
set -x LESS "-eS"

# Run this to get the completions updated
# fish_update_completions

eval (python -m virtualfish)
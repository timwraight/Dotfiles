# Git Aliae(?)
alias ga='git add'
alias gaa='git add -A'
alias gaac='git add -A && git commit'
alias gc='git commit'
alias gb='git br | uniq -f 1'
alias gbr='git branch'
alias gcf='git clean -f'
alias gcl='git clone'
alias gcn='git commit --no-verify'
alias gcv='git commit --no-verify'
alias gd='git diff'
# Git delete merged
alias gdm="git branch --merged master | egrep -v '\bmaster\b' | xargs git branch -d"
alias gf='git fetch'
alias gfo='git fetch origin'
alias gg='gb | grep '
alias gh="git reflog | egrep -io \"moving from ([^[:space:]]+)\" | awk '{ print \$3 }' | awk '!x[\$0]++' | head -n5"
alias gl1='git log --oneline'
alias gl='git log --graph --decorate'
alias gls='git log --oneline --stat'
# For 'git log unmerged': stuff that's in my branch but not on master
alias glu='git log $(git rev-parse --abbrev-ref HEAD) --not master'
alias gm='git merge'
alias gmt='git mergetool'
alias go='git checkout'
alias gp='git push'
alias gpf='git push --force'
alias gpu='git push -u origin'
# Push the current branch to origin with the same name
alias gpc='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gpom='git push origin master'
alias gppo='git pull origin'
alias gppom='git pull origin master'
alias grl='git reflog'
alias grc='git rebase --continue'
alias grm='git rebase master'
alias grs='git rebase --skip'
alias grh='git reset --hard'
alias gs='git status'
alias gsp='git stash pop'

# Get next unmerged file (u for unmerged)
# crazy escaping needed for awk
alias gu='gs --porcelain | grep UU | head -1 | awk '"'"'{print $2}'"'"''

# Get fresh branch off master
alias gfb='go master && git pull && go -b '
# Git Rebase Onto Master
alias grom='go master && git pull && go - && git rebase master'

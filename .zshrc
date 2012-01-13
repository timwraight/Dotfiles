# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="tim"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git, brew, git-flow, svn, vagrant)
# vi-mode

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="/Users/twraight/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/git/bin:/Users/twraight/pear/bin:/Users/twraight/context/tex/texmf-osx-64/bin:$PATH"

# Path ------------------------------------------------------------
  if [ -d ~/.local/bin ]; then
    export PATH=~/.local/bin:$PATH exists.
    fi
 
#   # Python path -----------------------------------------------------
    if [ -d ~/.local/lib/python2.7/site-packages ]; then
      export PYTHONPATH=~/.local/lib/python2.7/site-packages:$PYTHONPATH
      fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function 

export TANGENT_USER=wraightt

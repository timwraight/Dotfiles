# Path to your oh-my-zsh configuration.
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

export PATH="/Users/tim/bin:/Users/tim/Applications/context/tex/texmf-linux/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/noweb:/usr/local/texlive/2010/bin/universal-darwin:/usr/local/git/bin:/usr/local/Cellar/python/2.7/bin"
# Path ------------------------------------------------------------
  if [ -d ~/.local/bin ]; then
    export PATH=~/.local/bin:$PATH exists.
    fi
 
#   # Python path -----------------------------------------------------
    if [ -d ~/.local/lib/python2.7/site-packages ]; then
      export PYTHONPATH=~/.local/lib/python2.7/site-packages:$PYTHONPATH
      fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function 


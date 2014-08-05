#Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="steeef"

# Example aliases
alias zshconfig="vi ~/.zshrc"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git apache2-macports mysql-macports osx symfony2 svn vi-mode)

source $ZSH/oh-my-zsh.sh

# MacPorts
export PATH=/opt/local/libexec/gnubin:/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
fi


# Alias
alias ls='ls $LS_OPTIONS -hF'
alias ll='ls $LS_OPTIONS -lhF'
alias l='ls $LS_OPTIONS -lAhF'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias untar="tar -xfvz"
alias www="cd $HOME/Sites/htdocs"
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias apache2ctl='sudo /opt/local/apache2/bin/apachectl'
alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root -p shutdown'
alias pat='cd /opt/local/www/patchwork'
alias eject='drutil tray eject'
alias finder="open -a Finder"

# Fichier où est stocké l'historique
export HISTFILE=$HOME/.history

setopt hist_ignore_all_dups # ignore les doublons

autoload -U compinit
compinit

# Amélioration auto complétion
setopt prompt_subst # extension du prompt
autoload -U colors && colors    # couleurs

 
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BDésolé, pas de résultats pour : %d%b'
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s

export WORKON_HOME=~/.virtualenvs
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
export GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1

# Android SDK
export PATH=${PATH}:$HOME/Desktop/android-sdk-mac_x86/tools:$HOME/Desktop/android-sdk-mac_x86/platform-tools

if [ "$TERM" != "dumb" ]; then
    export LS_OPTIONS='--color=auto'
    eval `dircolors ~/.dir_colors`
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
alias ror="cd $HOME/Sites/RoR"
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias apache2ctl='sudo /opt/local/apache2/bin/apachectl'
alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root -p shutdown'
alias pat='cd /opt/local/www/patchwork'
alias eject='drutil tray eject'
alias php_conf="vim /opt/local/etc/php5/php.ini"
alias apache_conf="vim /opt/local/apache2/conf/httpd.conf"
alias disable_git_ps1="export PS1='\[\033[0;33m\]\w\[\033[00m\] $ '"
alias finder="open -a Finder"

# History
# Nombre d'entrées dans l'historique
export HISTORY=1000
export SAVEHIST=1000

# Fichier où est stocké l'historique
export HISTFILE=$HOME/.history

setopt hist_ignore_all_dups # ignore les doublons

autoload -U compinit
compinit

# Amélioration auto complétion
setopt prompt_subst # extension du prompt
autoload -U colors && colors    # couleurs

autoload -Uz vcs_info
 
zstyle ':vcs_info:*' stagedstr '%F{green}●%f'
zstyle ':vcs_info:*' unstagedstr '%F{yellow}●%f'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{red}:%f%F{yellow}%r%f'
zstyle ':vcs_info:*' enable git svn
 
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BDésolé, pas de résultats pour : %d%b'
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s

export WORKON_HOME=~/.virtualenvs

# Touche de commande
bindkey "\e[H" beginning-of-line # Début
bindkey "\e[F" end-of-line # Fin
bindkey "\e[3~" delete-char
bindkey "^R" history-incremental-search-backward # Rechercher

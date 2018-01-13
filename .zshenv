export PATH="$(brew --prefix homebrew/php/php71)/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="$PATH:$HOME/.yarn/bin:$HOME/.npm/bin"

export HOMEBREW_PREFIX=/usr/local/opt/
export GOPATH=$HOME/projects/go

# Automatically added by the Platform.sh CLI installer
export PATH="$HOME/.platformsh/bin:$PATH"
. '$HOME/.platformsh/shell-config.rc' 2>/dev/null || true
export PATH="$HOME/.sensiocloud/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$HOME/.fastlane/bin:$PATH"

export HISTFILE=$HOME/.history
setopt hist_ignore_all_dups # ignore les doublons

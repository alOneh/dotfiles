export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
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
export PATH="$HOME/Library/Python/2.7/bin:$PATH"
export PATH="$HOME/Library/Python/3.4/bin:$PATH"

export HISTFILE=$HOME/.history
setopt hist_ignore_all_dups # ignore les doublons

eval $(dinghy env)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alain.hippolyte/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/alain.hippolyte/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alain.hippolyte/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/alain.hippolyte/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

POWERLINE_CONFIG_COMMAND="python3 /usr/local/lib/python3.7/site-packages/powerline/config.py"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

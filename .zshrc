source /usr/local/share/antigen/antigen.zsh

antigen bundle robbyrussell/oh-my-zsh lib/
antigen bundle git
antigen bundle composer
antigen bundle docker
antigen bundle docker-compose
antigen bundle github
antigen bundle go
antigen bundle symfony2
antigen bundle sublime
antigen bundle z                            # autojump
antigen bundle andrewferrier/fzf-z
antigen bundle colored-man-pages            # adds colors to manpages
antigen bundle colorize                     # cat with syntax highlight support
antigen bundle cp                           # cp with progress bar

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen theme dracula

antigen apply

source $HOME/.dotfiles/.zshenv
source $HOME/.dotfiles/aliases

export EDITOR='vim'
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alain.hippolyte/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/alain.hippolyte/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alain.hippolyte/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/alain.hippolyte/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

eval $(dinghy env)

return 0

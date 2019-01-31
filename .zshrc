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

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

#antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
antigen theme bhilburn/powerlevel9k powerlevel9k

#BULLETTRAIN_CONTEXT_HOSTNAME=

antigen apply

source $HOME/.dotfiles/.zshenv
source $HOME/.dotfiles/aliases

export EDITOR='vim'
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
fi

#eval $(dinghy env)

function mu() {
    if [[ $# -eq 0 ]]; then
        history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n15
    elif [[ $# -eq 1 ]]; then
        history | awk '$2=="'$1'"{CMD[$3]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n15
    elif [[ $# -eq 2 ]]; then
        history | awk '$2=="'$1'"&&$3=="'$2'"{CMD[$4]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n15
    elif [[ $# -eq 3 ]]; then
        history | awk '$2=="'$1'"&&$3=="'$2'"&&$4=="'$3'"{CMD[$5]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n15
    fi
}

return 0

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alain.hippolyte/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/alain.hippolyte/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alain.hippolyte/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/alain.hippolyte/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

source $ZSH/oh-my-zsh.sh
source $HOME/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle docker
antigen bundle sudo
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

[ -f .aliases ] && source .aliases
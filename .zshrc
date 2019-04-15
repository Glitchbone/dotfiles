export ZSH=$HOME/.oh-my-zsh
export TERM="xterm-256color"

source $ZSH/oh-my-zsh.sh
source $HOME/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle docker
antigen bundle sudo
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle thewtex/tmux-mem-cpu-load
antigen theme agnoster
antigen apply

[ -f .aliases ] && source .aliases

alias lc='colorls -a --sd'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


alias ls='ls --color=auto -al'
alias lsg='ls --color=auto | grep'
alias st=gst
alias t="tig status"
alias gaam="git commit --amend"
alias add="vim $ZSH/custom/zsh_plus/alias && source ~/.zshrc"

help() {
	cat $HOME/.zsh_plus/alias.zsh
}

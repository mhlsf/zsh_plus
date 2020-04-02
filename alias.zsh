alias myip='curl http://ipecho.net/plain;'
alias lsg='ls --color=auto | grep'
alias lla='ll -a'
alias st=gst
alias t="tig status"
alias ti="tig"
alias add="vim ~/.zsh_plus/alias.zsh && source ~/.zshrc"
alias e="exit"
alias gadd="git-tags"
alias gdw="git diff --word-diff-regex=."
alias tigs="tig stash"
alias dpsg="dps | grep"
alias dps='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"'

#Edit commit : 
#Rebase using Ctrl-R in tig
#git reset --soft HEAD~
#gadd "New commit name or previous"
#git rebase --continue


dsh() {
	docker exec -it $1 bash
}

rebase() {
	if [[ $2 = '-f' ]]; then
		git stash;
		git rebase $1 --interactive --autosquash;
		git stash pop;
	else 
		git rebase $1 --interactive --autosquash;
	fi

}


help() {
	cat $HOME/.zsh_plus/alias.zsh
}

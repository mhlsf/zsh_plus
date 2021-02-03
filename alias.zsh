alias myip='curl http://ipecho.net/plain;'
alias lsg='ls --color=auto | grep'
alias lla='ll -a'
alias st=gst
alias c=clear
alias s="tig status"
alias t="tig status"
alias m="tig"
alias ti="tig"
alias tigr="git reflog --pretty=raw | tig --pretty=raw"
alias add="vim ~/.zsh_plus/alias.zsh && source ~/.zshrc"
alias e="exit"
alias gadd="git-tags"
alias gdw="git diff --word-diff-regex=."
alias tigs="tig stash"
alias dpsg="dps | grep"
alias dps='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias clean-branch='git branch --merged| egrep -v "(^\*|develop|master)"'

# Atlas blue
alias check='docker exec atlas_blue_api sh -c "composer csfix && composer cscheck & composer phpstan && composer deptrac && composer yaml-lint"'
alias sshServer='ssh ubuntu@ec2-54-75-43-28.eu-west-1.compute.amazonaws.com'


#Edit commit : 
#Rebase using Ctrl-R in tig
#edit commit in interactive rebase
#git reset --soft HEAD~
#gadd "New commit name or previous"
#git rebase --continue
#
#Reset last commit :
#git reset --soft HEAD~


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
	ccat $HOME/.zsh_plus/alias.zsh
}

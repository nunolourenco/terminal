export DESKTOP=/Users/alcides/Desktop
export EDITOR='mate -w'

export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
alias ls='ls -G'

# sudo
complete -cf sudo

# shortcuts
alias up='cd ..'
alias cpp='pwd | pbcopy'
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

alias git-stats='git log --numstat | awk -f $APPLEBIN/git-author-commits.awk'
alias clone='git clone'
alias commit='git commit'
alias push='git push'
alias st='git status -s'
alias sup='svn up'
alias ca='git commit -a -m'

alias e='$EDITOR'
alias untar='tar xvf'

source git-completion.sh
source .bash_prompt

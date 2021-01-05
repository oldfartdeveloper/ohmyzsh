# from https://gist.github.com/WadeShuler/bd873db7cd9051f2c0d231f3f7f3e0a8

# Source Reload
alias reload.zsh="source ~/.zshrc"
alias reload.profile="source ~/.bash_profile"
alias reload.term="source ~/.bash_profile && source ~/.zshrc"

# cd
alias ..="cd .."

# ls
alias ll="ls -AlhG"
#alias cll="/usr/local/bin/cll `pwd`"

# tar
alias tarr="tar -pczf $1 $2"
alias untarr="tar -pxzf $1"
alias starr="sudo tar -pczf $1 $2"

# Paths
alias go.webroot="/Applications/XAMPP/xamppfiles/htdocs"
alias go.sites="~/Sites"

# Mac
alias mac.showhidden="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias mac.hidehidden="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"

# Docker
alias docker.cleancontainer="docker ps -a -q | xargs docker rm"
alias docker.cleanimage="docker images --filter dangling=true -q | xargs docker rmi"

# Scott: don't like this; complicated and trims my first name letter.
# Functions - My perfected ls command!
cll() { ls -AlhG "$@" | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(" %0o ",k);print}' | cut -c 1-5,21-; }

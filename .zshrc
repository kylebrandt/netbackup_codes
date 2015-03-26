setopt APPEND_HISTORY
setopt SH_WORD_SPLIT
setopt EXTENDED_GLOB
# setopt AUTO_LIST		# these two should be turned off
# setopt AUTO_REMOVE_SLASH
# setopt AUTO_RESUME		# tries to resume command of same name
unsetopt BG_NICE		# do NOT nice bg commands
setopt CORRECT			# command CORRECTION
setopt EXTENDED_HISTORY		# puts timestamps in the history
# setopt HASH_CMDS		# turns on hashing
setopt AUTO_CD
setopt AUTOPUSHD
setopt ALL_EXPORT
IRCNICK="kbrandt"
IRCNAME="kbrandt"
IRCSERVER=irc.freenode.net

#BindKeys?
bindkey '5B' beginning-of-line #Ctrl-down
bindkey '5A' end-of-line #Ctrl-up
bindkey '3D' backward-kill-word #alt-left
bindkey '3C' kill-word #alt-right
bindkey '[D' backward-word #ctrl-left
bindkey '[C' forward-word #ctrl-right
bindkey '3B' backward-kill-line #Alt down
bindkey '3A' kill-line #alt-up

TZ="UTC"
HISTFILE=$HOME/.zhistory
HISTSIZE=50000
SAVEHIST=50000
HOSTNAME="`hostname -s`"
PAGER=less
EDITOR='vi'
CVS_RSH=ssh
# Set prompts
PS1=$'%{\e[1;35m%}[%n@%m: %~]%{\e[0m%} '
#RPS1=$'%{\e[1;31m%} <%B%h%b%{\e[1;31m%}@%T>%{\e[0m%}'
#. ~/.zshprompt
#setprompt

setopt AUTO_CD

PATH="$HOME/bin:/usr/local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin"
LANGUAGE=
LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8
LC_CTYPE=C
unsetopt ALL_EXPORT
# # --------------------------------------------------------------------
# # aliases
# # --------------------------------------------------------------------

#eval `dircolors $HOME/.dircolors`
alias -g 'll'='ls -al'
#alias -g 'ls'='ls --color=auto '

#Avoid typing cd ../../ for going two dirs down and so on
alias -g '...'='../..'
alias -g '....'='../../..'
alias -g '.....'='../../../..'
alias -g '......'='../../../../..'
alias -g '.......'='../../../../../..'
#Kyle's
alias	=clear
alias -r 'svim'='sudo vim'
alias -r 'lsd'='ls -Ad *(/)'
alias -r 'lsdr'='ls -Ad **/*(/)'
alias -r 'lsl'='ls -lAd *(@D)'
alias -r 'lslr'='ls -lAd **/*(@)'
alias -r 'd'='dirs -v'
alias -r 'apts'='apt-cache search'
alias -r 'apti'='sudo apt-get install'
alias -r 'yums'='sudo yum list'
alias -r 'yumi'='sudo yum install'
alias -r 'dot'='. ~/.zshrc'
alias -r 'edot'='vim -X ~/.zshrc'
alias -r 'tarx'='tar zxvf'
alias -r 'copykey'='ssh-copy-id -i ~/.ssh/id_rsa.pub'
alias -r 'nocomments'="awk '! /(^#)|(^$)/'"
alias -g 'chx'='chmod +x'
alias -r 'htun'='ssh -ND localhost:5555 miles800.homelinux.net -p 4000'
alias -r 'home'='ssh -p 4000 miles800.homelinux.net'
alias -r 'dhost'='ssh-keygen -R'
#iptables aliases
alias -r 'iptablesl'='sudo iptables -L -v --line-numbers'
#Completions
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' menu select=5
zstyle ':completion:*' hosts $hosts
zstyle ':completion:*:processes' command 'ps -au$USER -o pid,time,cmd|grep -v "ps -au$USER -o pid,time,cmd"'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)[ 0-9:]#([^ ]#)*=01;30=01;31=01;38'


export GOPATH=/Users/kbrandt/
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH=$PATH:~/src/blackbox/bin/
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

#Brew 
PATH="/usr/local/bin:$PATH"

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/kbrandt/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

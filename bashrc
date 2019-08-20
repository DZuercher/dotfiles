#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


export TERMINAL=urxvt

#Setting library path for g++ compiler
export LD_LIBRARY_PATH=/usr/local/include

#alias for starting a normal session
alias START_SESSION="/home/dominik/Documents/scripts/START_SESSION.sh"

#alias for starting a remote work session
alias START_REMOTE_SESSION="/home/dominik/Documents/scripts/START_REMOTE_SESSION.sh"

#alias for starting a work session (assuming ETH Local network)
alias START_WORK="/home/dominik/Documents/scripts/START_WORK.sh"

#aliases for switching GPU easily
alias NVIDIA_ON="sudo system76-power graphics nvidia"
alias NVIDIA_OFF="sudo system76-power graphics intel"

#Makes ranger exit into current directory
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

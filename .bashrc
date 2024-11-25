#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

setxkbmap -layout fr,ara
setxkbmap -option 'grp:alt_shift_toggle'

export PATH="/home/hesham/.local/bin:$PATH"

fish
. "/home/hesham/.deno/env"

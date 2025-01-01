#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias cls=clear
alias za9za9="echo ZA9ZA9"
alias home="cd ~"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias terraria='/home/hesham/GOG Games/Terraria/start.sh'
PS1='[\u@\h \W]\$ '

setxkbmap -layout fr,ara
setxkbmap -option 'grp:alt_shift_toggle'

export PATH="/home/hesham/.local/bin:$PATH"
export PATH="/home/hesham/zls/zig-out/bin:$PATH"
# export PATH="/home/hesham/v-analyzer/bin:$PATH"

fish
. "/home/hesham/.deno/env"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/hesham/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/hesham/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<

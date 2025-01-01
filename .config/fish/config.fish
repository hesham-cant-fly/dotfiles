clear

alias za9za9="echo ZA9ZA9"
alias cls=clear
alias pamcan=pacman

alias home="cd ~"
alias emacs-conf="cd ~/.emacs.d/"
alias nvim-conf="cd ~/.config/nvim/"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias terraria='/home/hesham/GOG Games/Terraria/start.sh'

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/hesham/.opam/opam-init/init.fish' && source '/home/hesham/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

export PATH="/home/hesham/.juliaup/bin:$PATH"

# <<< juliaup initialize <<<
source ~/.config/fish/completions/fzf

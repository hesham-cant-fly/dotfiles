alias za9za9="echo ZA9ZA9"
alias cls=clear
alias pamcan=pacman

alias home="cd ~"
alias emacs-conf="cd ~/.emacs.d/"
alias nvim-conf="cd ~/.config/nvim/"

# alias ls='ls --color=auto'
alias ls='nnn -de'
alias grep='grep --color=auto'
alias terraria='/home/hesham/GOG Games/Terraria/start.sh'

export PATH="/home/hesham/.juliaup/bin:$PATH"
export PATH="/home/hesham/go/bin:$PATH"
export PATH="~/.config/emacs/bin:$PATH"
set BLK "04"
set CHR "04"
set DIR "04"
set EXE "00"
set REG "00"
set HARDLINK "00"
set SYMLINK "06"
set MISSING "00"
set ORPHAN "01"
set FIFO "0F"
set SOCK "0F"
set OTHER "02"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"

source ~/.config/fish/completions/fzf

# pnpm
set -gx PNPM_HOME "/home/hesham/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

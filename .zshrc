
# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/hesham/.zsh/completions:"* ]]; then export FPATH="/home/hesham/.zsh/completions:$FPATH"; fi
# Zinit setup
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# Plugins
## Prompet

## Other plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Snippets
# zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::dnf
zinit snippet OMZP::command-not-found

# Autoload
autoload -U compinit && compinit
zinit cdreplay -q

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
HISTORY_IGNORE='(rm *)'
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt HIST_FCNTL_LOCK
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
unsetopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
unsetopt HIST_EXPIRE_DUPS_FIRST
setopt SHARE_HISTORY
unsetopt EXTENDED_HISTORY

# Completion config
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Aliases
alias no-network="firejail --net=none --noprofile --quiet"
alias dmdeeznuts="dmd"
alias za9za9="echo ZA9ZA9"
alias reload="source ~/dotfiles/.zshrc"
alias grep='grep --color=auto'
alias ci=zi
alias cls=clear
alias eza='eza --icons always --color always --git'
alias fetch='fastfetch --config examples/26.jsonc'
alias la='eza -a'
alias ll='eza -l'
alias lla='eza -la'
alias ls=eza
alias lt='eza --tree'
alias memgrind='valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --log-file=valgrind-out.txt'
alias quickfetch='fastfetch --config examples/8.jsonc'
alias reload='source ~/.zshrc'

# Dnf Fedora
alias -- pinstall="sudo dnf install"
alias -- premove="sudo dnf remove"
alias -- psearch="sudo dnf search"
alias -- prefresh="sudo dnf update --refresh"
alias -- pupdate="sudo dnf update"
alias -- pins=pinstall
alias -- prem=premove

# Editing
alias -- emacs='emacsclient -a "emacs"'
alias -- emacs-nw='emacsclient -a "emacs -nw" -nw'
alias -- edit='emacs-nw'

# Development
alias -- memgrind="valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --log-file=valgrind-out.txt"


# Variables
export REPORTTIME=1
export PATH="/home/hesham/go/bin:$PATH"
export PATH="/home/hesham/.config/emacs/bin:$PATH"
export EDITOR="nvim"
if [[ `uname` == Darwin ]]; then
    export MAX_MEMORY_UNITS=KB
else
    export MAX_MEMORY_UNITS=MB
fi
TIMEFMT='%J   %U  user %S system %P cpu %*E total'$'\n'\
'max memory:                %M '$MAX_MEMORY_UNITS''$'\n'

# Shell integrations
eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(opam env)"

fastfetch --config examples/8.jsonc

[ -f "/home/hesham/.ghcup/env" ] && . "/home/hesham/.ghcup/env" # ghcup-env
# pnpm
export PNPM_HOME="/home/hesham/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

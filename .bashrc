# ALIASES

# To ignore an alias... (https://remysharp.com/2018/08/23/cli-improved)
# $ \cat # ignore aliases named "cat" - explanation: https://stackoverflow.com/a/16506263/22617
# $ command cat # ignore functions and aliases

alias cat='bat'
alias find='fd'
alias ls='eza --all --long'
alias ping='prettyping --nolegend'

# Quick links
alias cdd='cd ~/.dotfiles'
alias cds='cd ~/Sites'

# Quick Tools
alias c="cake"
alias cs="cake start"

# A nice shortcut for pushing a WIP to github
alias wip='git aa && git cim "∆" && git push'

# Nicer git stuff
alias g='git'
alias gp='git p'
alias gitp='git p'
alias gs='git s'
alias gits='git s'
alias gaa='git aa'
alias gitaa='git aa'
alias gcim='git cim'
alias gitcim='git cim'
alias gr='git r'
alias gitr='git r'
alias gra='git ra'
alias gitra='git ra'


# PATHS & VARS

# Prepend brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Append bins in my home
export PATH="$PATH:~/.bin"

# Prepend npm global
export PATH="$(npm config get prefix):$PATH"

# Prepend user local bins
export PATH="$HOME/.local/bin:$PATH"

# Prepend manually-installed bins
export PATH="$HOME/.bin:$PATH"

# Prepend bins in the pwd
export PATH=".:$PATH"

# Improve coloring?
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
export COLORTERM="24bit"

# Erase duplicates in history
export HISTCONTROL=erasedups

# Store 10k history entries
export HISTSIZE=10000

# Set a minimal prompt
export PS1="\W 🦄  "

# BASH OPTIONS

# Append to the history file when exiting instead of overwriting it
shopt -s histappend

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Set up hub
eval "$(hub alias -s)"

# rbenv: To enable shims and autocompletion
eval "$(rbenv init -)"

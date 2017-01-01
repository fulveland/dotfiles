clear

# Set up hub
eval "$(hub alias -s)"

# ALIASES

# Quick links
alias cds='cd ~/Sites'
alias cdf='cd ~/Sites/floraonfauna'

# Correct some common git typos
alias gits='git s'
alias gitaa='git aa'
alias gitr='git r'
alias gitra='git ra'

# Use my custom ls
alias ls='ls -laG'

# PATHS & VARS

# My own stuff
export PATH="$PATH:~/.bin"

# Search usr/local/bin before /bin (etc)
export PATH=/usr/local/bin:${PATH}

# NPM
export PATH=$PATH:/usr/local/share/npm/bin

# Heroku
export PATH=$PATH:/usr/local/heroku/bin

# rbenv: To use Homebrew's directories rather than ~/.rbenv
export RBENV_ROOT=/usr/local/var/rbenv

# Improve coloring?
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

# Erase duplicates in history
export HISTCONTROL=erasedups

# Store 10k history entries
export HISTSIZE=10000


# BASH OPTIONS

# Append to the history file when exiting instead of overwriting it
shopt -s histappend

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
  shopt -s "$option" 2> /dev/null
done

# Set a minimal prompt
export PS1="\W 🦄  "

# Can't remember what this does
source ~/.bin/git-completion.bash


# OTHER HELPFUL STUFF

# rbenv: To enable shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# NVM
export NVM_DIR="/Users/admin/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Finally, clear the login message
clear

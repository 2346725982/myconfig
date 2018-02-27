# Shortcut
alias l='ls -laF'

# Safety first
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Change Directory aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Git aliases
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit -v'
alias gca='git commit -a -v'
alias gcb='git checkout -b'
alias gcm='git checkout master'
alias gco='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gl='git pull'
alias glg='git log'
alias gm='git merge'
alias gmm='git merge master'
alias gmv='git mv'
alias gp='git push'
alias grm='git rm'
alias gst='git status'

# neovim to replace vim
if type nvim > /dev/null 2>&1 ; then alias vim='nvim'; fi

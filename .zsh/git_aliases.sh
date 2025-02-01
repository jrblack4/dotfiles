alias gpo='git push origin -u $(git rev-parse --abbrev-ref HEAD)'
alias gs='git status'

ga() {  # No alias, just a function
    if [ "$#" -eq 0 ]; then
        git add .
    else
        git add "$@"
    fi
}

alias gcm='git commit -m'
alias gp='git pull'
alias gpl='git pull --rebase'
alias gco='git checkout'
alias gcob='git checkout -b'

gc() {
  branch=$(git rev-parse --abbrev-ref HEAD)
  git commit -m "$branch $*"
}

gr() {
    if [ "$#" -eq 0 ]; then
        git restore --staged .
    else
        git restore --staged "$@"
    fi
}

gd() {
    if [ "$#" -eq 0 ]; then
        git diff --color | diff-so-fancy
    else
        git diff --color -- "$@" | diff-so-fancy
    fi
}

alias diff=gd  # This alias is okay, as it doesn't conflict with a function

#load functions
alias ser='source ~/bin/functions.zsh'

emacsclient_24bit () {
    ITERM_24BIT=1 emacsclient -c -a '' "$@"
}

# find directory with fasd and open in emacsclient
er() {
    if [[ $(fasd $@) ]]; then
        ITERM_24BIT=1 emacsclient -c -a '' `fasd -a $1`;
    else
        echo "no result from fasd"
    fi
}
# find file with fasd and open in emacsclient. can't remember which one is best?
er() {
    if [[ $(fasd $@) ]]; then
        ITERM_24BIT=1 emacsclient -c -a '' `fasd -a $1`;
    else
        echo "no result from fasd"
    fi
}
alias fed='fasd -e emacsclient_c'

# quickly find a file using find
qf() {
    find . -iname "*$1*" -print
}


github_push() {
    git add .
    git commit -m "$*"
    git push origin master
}

github_heroku_push() {
    git add .
    git commit -m "$*"
    git push origin master
    git push heroku master
}

alias gq=github_push
alias ghq=github_heroku_push

loadnvm() {
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
}

#open in editor file or directory returned from command output
ped() {
    e $($@)
}

# find and edit file fuzzy search 3 levels deep
edd() {
    local needle=$(echo "$*" | sed -E 's/ +/.*/g')
    e "`find . -maxdepth 3 | grep -Ei "${needle}[^/]*$" | fzf -s 20 -1 -0
# -q "$1"`"
}
# fuzzy search 3 levels deep
cdd() {
    local needle=$(echo "$*" | sed -E 's/ +/.*/g')
    cd "`find . -type d -maxdepth 3 | grep -Ei "${needle}[^/]*$" | fzf -s 20 -1 -0
# -q "$1"`"
}

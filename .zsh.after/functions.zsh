#load functions
alias ser='source ~/bin/functions.zsh'

emacsclient_c () {
    emacsclient -c -a '' "$@"
}
# find file with fasd and open in emacsclient. can't remember which one is best?
zed() {
    if [[ $(fasd $@) ]]; then
        emacsclient -c -a '' `fasd -a $1`;
    else
        echo "no result from fasd"
    fi
}
alias fed='fasd -e emacsclient_c'

# quickly find a file using find
qf() {
    find . -iname "*$1*" -print
}


gitpush() {
    git add .
    git commit -m "$*"
    git push origin master
}

alias gq=gitpush



loadnvm() {
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
}

editFileReturnedFromCommandOutput() {
    e $($@)
}
alias ped='editFileReturnedFromCommandOutput'

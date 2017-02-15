#load functions
alias ser='source ~/bin/functions.zsh'

emacsclient_24bit () {
    ITERM_24BIT=1 emacsclient -c -a '' "$@"
}

# find file with fasd and open in emacsclient. can't remember which one is best?
er() {
    if [[ $(fasd $@) ]]; then
        e `fasd -a $1`;
        # ITERM_24BIT=1 emacsclient -c -a '' `fasd -a $1`;
    else
        echo "no result from fasd"
    fi
}
alias fed='fasd -e emacsclient_c'

# quickly find a file using find
qf() {
    find . -iname "*$1*" -print 2> /dev/null
}


github_push() {
    git add .
    git commit -m "$1"
    git push origin master
}

github_heroku_push() {
    RAILS_ENV=production bundle exec rake assets:precompile
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
ed() {
    local needle=$(echo "$*" | sed -E 's/ +/.*/g')
    e "`find . -maxdepth 5 | grep -Ei "${needle}[^/]*$" | fzf -s 20 -1 -0
# -q "$1"`"
}
# fuzzy search 3 levels deep
cdd() {
    local needle=$(echo "$*" | sed -E 's/ +/.*/g')
    cd "`find . -type d -maxdepth 3 | grep -Ei "${needle}[^/]*$" | fzf -s 20 -1 -0
# -q "$1"`"
}


cpmx() {
    scp -r $1 dcnunes@matrix.senecac.on.ca:/home/dcnunes/$2
}

qrc() {
    clear; gcc shopping_2_lab.c; ./a.out
    # if [ -n $1 ]
    # then
    #     echo "Running with new file."
    #     filename=$1
    #     export filename
    # fi
    # export filename
    # clear;
    # gcc $1; ./a.out;
}


crun() {

    echo "correct num of args"
}


prac() {

    grep -R "model name" /proc/cpuinfo | sort -u > /tmp/tmp1.txt
    tr -d ' ' </tmp/tmp1.txt > /tmp/tmp2.txt
    cut -d '@' -f2 /tmp/tmp2.txt

}

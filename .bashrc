#ALIASES PROG

alias clr='clear'
alias rma='find . -type f ! -name "*.*" -exec rm {} +'
alias lsv='ls -v'
alias pdf='wslview "$(pwd)"/*.pdf'
alias prec='~/prog1/precedencia'
p() {
    local dir=~/prog1/practicos/prac"$1"
    if [ ! -d "$dir" ]; then
        mkdir -p "$dir" && cd "$dir" || echo "Failed to create directory"
    else
        cd "$dir"
    fi
}
fp() {
    clr
    fpc -l- "$1"
    rm "${1%.*}.o"
}
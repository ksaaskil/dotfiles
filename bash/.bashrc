function nbstrip_all_cwd {
    for nbfile in *.ipynb; do
        echo "$( nbstrip_jq $nbfile )" > $nbfile
    done
    unset nbfile
}

alias git-branches="git for-each-ref --sort=-committerdate refs/heads --format='%(HEAD)%(color:yellow)%(refname:short)|%(color:bold green)%(committerdate:relative)|%(color:blue)%(subject)|%(color:magenta)%(authorname)%(color:reset)' --color=always|column -ts'|'}"

# GitHub helpers
alias hb='hub browse'
alias hc='hub compare'
alias hp='hub pr show'

# Pyenv
alias py3='pyenv activate python-3.6.2'
alias python3.6.2='pyenv activate python-3.6.2'
alias python2.7.10='pyenv activate python-2.7.10'

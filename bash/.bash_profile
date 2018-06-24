parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

alias python3.5.0='source $HOME/.pyenv/versions/python3.5.0/bin/activate'

alias nbstrip_jq="jq --indent 1 \
    '(.cells[] | select(has(\"outputs\")) | .outputs) = []  \
    | (.cells[] | select(has(\"execution_count\")) | .execution_count) = null  \
    | .metadata = {\"language_info\": {\"name\": \"python\", \"pygments_lexer\": \"ipython3\"}} \
    | .cells[].metadata = {} \
    '"

source $HOME/.pyenv/versions/2.7.10/envs/python2.7.10/bin/activate
export ANDROID_HOME=$HOME/Library/Android/sdk/
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH="/usr/local/opt/node@8/bin:$PATH"

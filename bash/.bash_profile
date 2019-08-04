source ~/.bashrc

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

parse_virtual_env() {
  if [[ $VIRTUAL_ENV != "" ]]; then
    # Strip out the path and just leave the env name
    echo '\[\e[0;34m\](${VIRTUAL_ENV##*/})\[\e[0m\]'
  fi
}

function updatePrompt {
  PS1="$(parse_virtual_env)\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
}

export -f updatePrompt
export PROMPT_COMMAND='updatePrompt'

alias nbstrip_jq="jq --indent 1 \
    '(.cells[] | select(has(\"outputs\")) | .outputs) = []  \
    | (.cells[] | select(has(\"execution_count\")) | .execution_count) = null  \
    | .metadata = {\"language_info\": {\"name\": \"python\", \"pygments_lexer\": \"ipython3\"}} \
    | .cells[].metadata = {} \
    '"

export ANDROID_HOME=$HOME/Library/Android/sdk/
export JAVA_HOME=$(/usr/libexec/java_home)

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PIP_REQUIRE_VIRTUALENV=true
alias py3='pyenv activate python-3.6.2'
alias python3.6.2='pyenv activate python-3.6.2'
alias python2.7.10='pyenv activate python-2.7.10'

export PATH=~/.npm-global/bin:$PATH
export PATH=/Applications/CMake.app/Contents/bin:$PATH
export PATH=/Users/kimmo/bin:$PATH
# VS Code
export PATH=/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/:$PATH

# added by Miniconda3 installer
# export PATH="/Users/kimmo/miniconda3/bin:$PATH"

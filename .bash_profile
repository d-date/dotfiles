source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh

export VIRTUALENVWRAPPER_PYTHON=$HOME/.pyenv/shims/python
export ANDROID_HOME=${HOME}/android-sdks
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$HOME/.rbenv/shims:$PATH
export PATH=$HOME/Library/TeX/Root/bin/:$PATH
export MANPATH=/opt/local/man:$MANPATH
export C_INCLUDE_PATH=/opt/local/include:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=/opt/local/include:$CPLUS_INCLUDE_PATH
export PATH=$HOME/.cabal/bin:$PATH
export PATH=$HOME/.pyenv/shims:$PATH
export PATH=$HOME/depot_tools:$PATH
export GOPATH=$HOME/.go

alias ll='ls -l'
alias ipython='ipython --pylab'

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi

eval "$(rbenv init -)"
eval "$(pyenv init -)"

test -r ~/.bashrc && . ~/.bashrc

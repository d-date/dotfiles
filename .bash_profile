
source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

export PS1='\[\033[1;32m\]\u\[\033[00m\]:\[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \$ '
export PATH=$PATH:/Users/DaikiMatsudate/android-sdks/platform-tools:/Users/DaikiMatsudate/android-sdks/tools
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$HOME/.rbenv/shims:$PATH
export PATH=$HOME/Library/TeX/Root/bin/:$PATH
export MANPATH=/opt/local/man:$MANPATH
export LIBRARY_PATH=/opt/local/lib:$LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/local/lib:$LD_LIBRARY_PATH
export C_INCLUDE_PATH=/opt/local/include:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=/opt/local/include:$CPLUS_INCLUDE_PATH
export PATH=$HOME/.cabal/bin:$PATH
export PATH=$HOME/.pyenv/shims:$PATH
export GOPATH=$HOME/.go
### Use for Making Templates
export TEMPLATES_WORKDIR=$HOME/bitBucket/yearcardtemplategenerator

eval "$(rbenv init -)"

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi

test -r ~/.bashrc && . ~/.bashrc

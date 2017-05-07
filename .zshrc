export ZSH=$HOME/.oh-my-zsh

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

ZSH_THEME="robbyrussell"

alias ll='ls -l'
alias ipython='ipython --pylab'

if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi

fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

autoload -U compinit
compinit -u

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi

install_powerline_precmd

# Init rbenv
eval "$(rbenv init -)"

# Init pyenv
eval "$(pyenv init -)"

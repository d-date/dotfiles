export ZSH=$HOME/.oh-my-zsh

alias zshrc="subl ~/.zshrc"
alias bundle!="bundle install && rake install"
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"
alias ri="rake install"
alias gc="git checkout"
alias gco="git checkout"
alias gcm="git checkout master"
alias gpull="git pull"
alias gpush="git push"
alias gbranch="git checkout -b"
alias gclone="git clone"
alias g="gittower ."
alias s="subl ."
alias o="open ."

function o() {
  z $1 && open .
}

function e() {
  _z $1
  git pull
  gittower .
  subl .
}

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

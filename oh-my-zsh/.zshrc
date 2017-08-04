export ZSH=~/.oh-my-zsh
#ZSH_THEME="robbyrussell-docker"
ZSH_THEME="spaceship"
SPACESHIP_DOCKER_SHOW=false
plugins=(git docker docker-compose go vagrant ansible ruby kubectl)
source $ZSH/oh-my-zsh.sh
TERM=xterm-256color


export PATH="$PATH/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin"

export WORKSPACE=$HOME/workspace
export GOPATH=$WORKSPACE/go
export PATH=$PATH:$GOPATH/bin
export ENV=$WORKSPACE/github/jgsqware/env

export LESS=' -R '

source $ZSH/functions/aliases.sh

# User configuration 
if [ -n "$PS1" ]; then # if statement guards adding these helpers for non-interative shells
	eval "$(${ENV}/oh-my-zsh/base16-shell/profile_helper.sh)"
    base16_chalk
fi

if [[ -d "$HOME/.rvm" ]]; then
    export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
    source ~/.rvm/scripts/rvm
fi


if [[ "$(uname)" == "Darwin" ]]; then
    # OSX only
   test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
   export EDITOR=vim
   export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"

elif [[ "$(uname)" == "Linux" ]]; then
    # Linux only
    export EDITOR=vim
    export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"

fi

if [[ ! -z "$HOME/.bash_profile" ]]; then
    source ~/.bash_profile
fi

export CDPATH=".:$WORKSPACE:$GOPATH/src"

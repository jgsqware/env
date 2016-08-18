export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell-docker"

plugins=(git brew docker docker-compose go vagrant ansible ruby)
source $ZSH/oh-my-zsh.sh


export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin"

export EDITOR=emacs
export ANDROID_HOME="/usr/local/Cellar/android-sdk/24.4.1_1"
export GROOVY_HOME=/usr/local/opt/groovy/libexec

export WORKSPACE=$HOME/workspace
export GOPATH=$WORKSPACE/go
export ENV=$WORKSPACE/github/env

export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R '

alias zshconfig="emacs ~/.zshrc"
alias emacsconfig="emacs ~/.emacs"
alias workspace="cd ${WORKSPACE}"
alias env_dir="cd ${ENV}"

# User configuration 
if [ -n "$PS1" ]; then # if statement guards adding these helpers for non-interative shells
	eval "$(${ENV}/oh-my-zsh/base16-shell/profile_helper.sh)"
    base16_default-dark
fi

if [[ -d "$HOME/.rvm" ]]; then
    export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
    source ~/.rvm/scripts/rvm
fi


if [[ "$(uname)" == "Darwin" ]]; then
    # OSX only
   test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
   alias emacs="/usr/local/Cellar/emacs/24.5/Emacs.app/Contents/MacOS/Emacs -nw"

elif [[ "$(uname)" == "Linux" ]]; then
    # Linux only
fi




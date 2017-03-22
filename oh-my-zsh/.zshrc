export ZSH=~/.oh-my-zsh
#ZSH_THEME="robbyrussell-docker"
ZSH_THEME="spaceship"
plugins=(git docker docker-compose go vagrant ansible ruby kubectl)
source $ZSH/oh-my-zsh.sh


export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin"

export WORKSPACE=$HOME/workspace
export GOPATH=$WORKSPACE/go
export PATH=$PATH:$GOPATH/bin
export ENV=$WORKSPACE/github/jgsqware/env

export LESS=' -R '

alias zshconfig="emacs ~/.zshrc"
alias workspace="cd ${WORKSPACE}"
alias env_dir="cd ${ENV}"
alias docker-rmid="docker images --quiet --filter=dangling=true | xargs docker rmi -"

alias notes="code $WORKSPACE/lampiris/notes"
alias playground="code $GOPATH/src/github.com/jgsqware/playground"

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
   alias emacs="/usr/local/Cellar/emacs/$(brew info --json=v1 emacs | jq '.[].installed[].version' | sed 's/\"//g')/bin/emacs"
   export EDITOR="/usr/local/Cellar/emacs/$(brew info --json=v1 emacs | jq '.[].installed[].version' | sed 's/\"//g')/bin/emacs"
   export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"

elif [[ "$(uname)" == "Linux" ]]; then
    # Linux only
    export EDITOR=emacs
    export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"

fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/juliengarciagonzalez/.sdkman"
[[ -s "/Users/juliengarciagonzalez/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/juliengarciagonzalez/.sdkman/bin/sdkman-init.sh"

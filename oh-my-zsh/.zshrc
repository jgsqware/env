export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell-docker"

plugins=(git brew docker docker-compose go vagrant ansible ruby)
source $ZSH/oh-my-zsh.sh

# User configuration
if [ -n "$PS1" ]; then # if statement guards adding these helpers for non-interative shells
	eval "$(${HOME}/workspace/github/env/oh-my-zsh/base16-shell/profile_helper.sh)"
    base16_default-dark
fi


export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin"

export EDITOR=emacs
export ANDROID_HOME="/usr/local/Cellar/android-sdk/24.4.1_1"
export GROOVY_HOME=/usr/local/opt/groovy/libexec
export GOPATH=~/workspace/go

<<<<<<< 6b98c1ed67a14aa7c187b3d3a705c958a33899dd
if [[ -d "$HOME/.rvm" ]]; then
    export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
    source ~/.rvm/scripts/rvm
fi
=======
alias zshconfig="${EDITOR} ~/.zshrc"
alias vimconfig="${EDITOR} ~/.vimrc"
>>>>>>> update .zshrc and fix robbyrussell-docker.zsh-theme

if [[ "$(uname)" == "Darwin" ]]; then
    # OSX only
   test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
elif [[ "$(uname)" == "Linux" ]]; then
    # Linux only
fi




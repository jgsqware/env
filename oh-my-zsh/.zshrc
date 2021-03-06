export ZSH=~/.oh-my-zsh
function powerline_precmd() {
	PS1="$($GOPATH/bin/powerline-go -error $? -shell zsh)"
}

function install_powerline_precmd() {
	for s in "${precmd_functions[@]}"; do
		if [ "$s" = "powerline_precmd"  ]; then
			return
		fi
	done
	precmd_functions+=(powerline_precmd)
}

#if [ "$TERM" != "linux"  ]; then
#	install_powerline_precmd
#fi

ZSH_THEME="spaceship"
SPACESHIP_DOCKER_SHOW=false
plugins=(git docker docker-compose go vagrant ansible kubectl)
source $ZSH/oh-my-zsh.sh
TERM=xterm-256color

if hash konsole 2>/dev/null; then
    konsoleprofile colors=base16-chalk
fi

export PATH="$PATH/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin"

export WORKSPACE=$HOME/workspace
export GOPATH=$WORKSPACE/go
export PATH=$PATH:$GOPATH/bin:$HOME/.cargo/bin
export ENV=$WORKSPACE/github/jgsqware/env

export LESS=' -R '

source $ZSH/functions/aliases.sh

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

if [[ -f "$HOME/.bash_profile" ]]; then
    source ~/.bash_profile
fi

export CDPATH=".:$WORKSPACE:$GOPATH/src"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
source <(kubectl completion zsh)
export GPG_TTY=$(tty)
source ~/.profile
export LC_ALL="en_US.UTF-8"

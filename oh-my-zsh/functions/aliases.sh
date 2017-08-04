# Git aliases
alias gvend="git add vendor glide.* && git commit -m 'update Glide vendors'"

# Shell Aliases
alias zsh_alias="vim ~/.oh-my-zsh/functions/aliases.sh"
alias zshconfig="vim ~/.zshrc"
alias workspace="cd $WORKSPACE"
alias env_dir="cd $ENV"

alias hg="history | grep -i"
alias pg="ps aux | grep -i"
alias ip_wifi="ipconfig getifaddr en0"

# Docker
alias docker-rmid="docker images --quiet --filter=dangling=true | xargs docker rmi -"
alias dkc="docker-compose"

# Applications
alias mvn7='docker run --rm -v ~/.m2:/root/.m2 -v $(pwd):/src -v /dev/urandom:/dev/random -w /src -e "MAVEN_OPTS= -XX:+TieredCompilation -XX:TieredStopAtLevel=1" -t maven:3-jdk-7 mvn'
alias mvn8='docker run --rm -v ~/.m2:/root/.m2 -v $(pwd):/src -v /dev/urandom:/dev/random -w /src -e "MAVEN_OPTS= -XX:+TieredCompilation -XX:TieredStopAtLevel=1" -t maven:3-jdk-8 mvn'

# Go
alias playground="code $GOPATH/src/github.com/jgsqware/playground"
alias godocs='godoc -http=":6060"'

# Git aliases
alias gvend="git add vendor glide.* && git commit -m 'update Glide vendors'"

# Shell Aliases
alias zsh_alias="vim ~/.oh-my-zsh/functions/aliases.sh"
alias zshconfig="vim ~/.zshrc"
alias workspace="cd $WORKSPACE"
alias env_dir="cd $ENV"
alias env_ansible="code $ENV/ansible"
alias hg="history | grep -i"
alias pg="ps aux | grep -i"
alias ip_wifi="ipconfig getifaddr en0"
alias render="xrandr --output DP-1 --mode 2560x1440 --panning 3840x2160+3840+1440 --scale 1.5x1.5 --right-of eDP-1 && xrandr --output DP-1 --mode 2560x1440 --panning 3840x2160+3840+0 --scale 1.5x1.5 --right-of eDP-1"

# Docker
alias docker-rmid="docker images --quiet --filter=dangling=true | xargs docker rmi -"
alias dkc="docker-compose"

# Applications
alias mvn7='docker run --rm -v ~/.m2:/root/.m2 -v $(pwd):/src -v /dev/urandom:/dev/random -w /src -e "MAVEN_OPTS= -XX:+TieredCompilation -XX:TieredStopAtLevel=1" -t maven:3-jdk-7 mvn'
alias mvn8='docker run --rm -v ~/.m2:/root/.m2 -v $(pwd):/src -v /dev/urandom:/dev/random -w /src -e "MAVEN_OPTS= -XX:+TieredCompilation -XX:TieredStopAtLevel=1" -t maven:3-jdk-8 mvn'
alias stream='mkchromecast --encoder-backend ffmpeg --alsa-device hw:1,1 --name Bureau -b 320'

# Go
alias playground="code $GOPATH/src/github.com/jgsqware/playground"
alias godocs='godoc -http=":6060"'

# Giantswarm
export GS_GOPATH="$GOPATH/src/github.com/giantswarm/"
export GS_AWS_OPERATOR="~/.ssh/aws-operator"
alias gs_go="cd $GS_GOPATH"
alias gingerctl="gsctl --api-endpoint https://api.g8s.ginger.eu-central-1.aws.gigantic.io --auth-token $GS_GINGER_AUTH_TOKEN"
alias gaussctl="gsctl --api-endpoint https://api.g8s.gauss.eu-central-1.aws.gigantic.io --auth-token $GS_GAUSS_AUTH_TOKEN"

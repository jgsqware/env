# Env

```
git clone git@github.com:jgsqware/env.git ~/workspace/github/jgsqware/env

```

1. OSX

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```
brew tap caskroom/fonts 
brew cask install font-hack
brew cask install font-fira-code

brew install jq
brew install source-highlight

brew cask install google-chrome
brew cask install slack
brew cask install iterm2
brew cask install dashlane
brew cask install visual-studio-code
brew cask install spotify
brew cask install statusfy


defaults write com.apple.desktopservices DSDontWriteNetworkStores true
```

1. Kubuntu

```
sudo apt-get install -y \
    jq \
    source-highlight

sudo apt install fonts-firacode

sudo wget -O /usr/share/konsole/base16-chalk.colorscheme https://raw.githubusercontent.com/cskeeters/base16-konsole/master/colorscheme/base16-chalk.colorscheme

konsoleprofile colors=base16-chalk

curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/v1.7.0/bin/linux/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

#install virtualbox

minikube start

``` 

1. ITerm2

Restore the file `${HOME}/workspace/github/jgsqware/env/iterm2/com.googlecode.iterm2.plist` into iterm2

ITerm -> Preferences -> Load preferences from a custom folder or URL

1. Git

```
ln -s ${HOME}/workspace/github/jgsqware/env/git/.gitconfig ~/.gitconfig
ln -s ${HOME}/workspace/github/jgsqware/env/git/.gitignore_global ~/.gitignore_global
```

1. Oh-My-ZSH

    - Install

    ```
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ```

    - Restore
    
    ```
    ln -s  ${HOME}/workspace/github/jgsqware/env/oh-my-zsh/spaceship.zsh-theme ${HOME}/.oh-my-zsh/themes/
    ln -s  ${HOME}/workspace/github/jgsqware/env/oh-my-zsh/functions/ ${HOME}/.oh-my-zsh/
    rm  ${HOME}/.zshrc
    ln -s ${HOME}/workspace/github/jgsqware/env/oh-my-zsh/.zshrc ~/.zshrc
    source ~/.zshrc
    ```

1. Emacs

```
ln -s ${HOME}/workspace/github/jgsqware/env/emacs/.emacs ${HOME}/.emacs
ln -s ${HOME}/workspace/github/jgsqware/env/emacs/.emacs.d ${HOME}/.emacs.d
```

1. Intellij Idea

```
ln -s ${HOME}/workspace/github/jgsqware/env/intellij_idea/idea.vmoptions ~/Library/Preferences/IntelliJIdea2016.3/idea.vmoptions
```
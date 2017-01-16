# Env

```
git clone git@github.com:jgsqware/env.git ~/workspace/github/jgsqware/env

```

1. Homebrew

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
    ln -s  ${HOME}/workspace/github/jgsqware/env/oh-my-zsh/robbyrussell-docker.zsh-theme ${HOME}/.oh-my-zsh/themes/
    rm  ${HOME}/.zshrc
    ln -s ${HOME}/workspace/github/jgsqware/env/oh-my-zsh/.zshrc ~/.zshrc
    source ~/.zshrc
    ```

1. Emacs

```
ln -s ${HOME}/workspace/github/jgsqware/env/emacs/.emacs ${HOME}/.emacs
ln -s ${HOME}/workspace/github/jgsqware/env/emacs/.emacs.d ${HOME}/.emacs.d
```

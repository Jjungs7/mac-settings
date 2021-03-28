#!/bin/bash

# brew packages
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew tap AdoptOpenJDK/openjdk

brew install tree tmux
brew install --cask iterm2

brew install zsh-autosuggestions zsh-syntax-highlighting

brew install direnv pyenv nvm
brew install --cask adoptopenjdk

brew install --cask intellij-idea visual-studio-code

brew install gnupg gpg-suite
brew install --cask keybase

brew install kubectl
brew install --cask docker

brew install --cask firefox google-chrome

brew install --cask discord

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i '' "s/prompt_segment blue "'$CURRENT_FG'" '%~'/prompt_segment blue "'$CURRENT_FG'" '%1d'/" ~/.oh-my-zsh/themes/agnoster.zsh-theme

# powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
#Ubuntu Mono Derivative Powerline

cp zshrc ~/.zshrc
cp vimrc ~/.vimrc

# Manual:
# Kakaotalk
# Slack

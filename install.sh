#!/bin/bash

# brew packages
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew tap AdoptOpenJDK/openjdk

brew install --cask adoptopenjdk
brew install direnv pyenv nvm

brew install tree tmux
brew install --cask iterm2

brew install zsh-autosuggestions zsh-syntax-highlighting

brew install --cask intellij-idea visual-studio-code pycharm goland

brew install ansible gnupg
brew install --cask keybase gpg-suite-no-mail

brew install kubernetes-cli
brew install --cask docker lens

brew install --cask firefox google-chrome

brew install --cask discord

# powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
#Ubuntu Mono Derivative Powerline

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i '' "s/prompt_segment blue "'$CURRENT_FG'" '%~'/prompt_segment blue "'$CURRENT_FG'" '%1d'/" ~/.oh-my-zsh/themes/agnoster.zsh-theme

cp zshrc ~/.zshrc
cp vimrc ~/.vimrc

# Manual:
# Kakaotalk
# Slack

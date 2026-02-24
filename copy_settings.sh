#!/bin/bash

cp ~/Library/Application\ Support/Code/User/settings.json result/vscode_settings.json
cp ~/Library/Application\ Support/Code/User/keybindings.json result/vscode_keybindings.json
#cp ~/Library/Application\ Support/JetBrains/IntelliJIdea2025.2/idea.properties result/intellij.idea.properties
cp ~/.vimrc result/vimrc
cp ~/.zshrc result/zshrc
cp ~/.zprofile result/zprofile
cp ~/.zprofile_k8s result/zprofile_k8s
cp ~/.tmux.conf result/tmux.conf
cp ~/com.googlecode.iterm2.plist result/com.googlecode.iterm2.plist
cp ~/.gitconfig result/gitconfig

brew_packages="$(brew leaves 2> /dev/null | paste -sd' ' -)"
brew_cask_packages="$(brew ls --casks 2> /dev/null | paste -sd' ' -)"

echo $brew_packages > result/brew_packages
echo $brew_cask_packages > result/brew_cask_packages


# copy raycast settings
# backup all documents, downloads, pictures, desktop, workspace, scratches


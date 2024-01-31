#!/bin/bash

cp ~/Library/Application\ Support/Code/User/settings.json vscode_settings.json
cp ~/.vimrc vimrc
cp ~/.zshrc zshrc
cp ~/.tmux.conf tmux.conf
cp ~/com.googlecode.iterm2.plist .

cp ~/.zprofile zprofile

brew_packages=$(brew leaves 2> /dev/null)
brew_cask_packages=$(brew ls --casks 2> /dev/null)

echo $brew_packages > brew_packages
echo $brew_cask_packages > brew_cask_packages


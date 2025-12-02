#!/bin/bash

cp ~/Library/Application\ Support/Cursor/User/settings.json cursor_settings.json
cp ~/Library/Application\ Support/Cursor/User/keybindings.json cursor_keybindings.json
cp ~/Library/Application\ Support/Windsurf/User/settings.json windsurf_settings.json
cp ~/Library/Application\ Support/Windsurf/User/keybindings.json windsurf_keybindings.json
cp ~/Library/Application\ Support/JetBrains/IntelliJIdea2024.2/idea.properties intellij.idea.properties
cp ~/.vimrc vimrc
cp ~/.zshrc zshrc
cp ~/.zprofile zprofile
cp ~/.tmux.conf tmux.conf
cp ~/com.googlecode.iterm2.plist .
cp ~/.gitconfig .

brew_packages=$(brew leaves 2> /dev/null)
brew_cask_packages=$(brew ls --casks 2> /dev/null)

echo $brew_packages > brew_packages
echo $brew_cask_packages > brew_cask_packages


# copy raycast settings
# backup all documents, downloads, pictures, desktop, workspace, scratches
# copy karabiner settings


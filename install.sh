# Manual:
# Kakaotalk
# Slack

#!/bin/bash
defaults write -g InitialKeyRepeat -float 15.0
defaults write -g KeyRepeat -float 2.0
defaults write -g com.apple.mouse.scaling -float 1.0

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# brew packages
brew_packages=$(< brew_packages)
brew_cask_packages$(< brew_cask_packages)

brew install $brew_packages
brew install --cask $brew_cask_packages

# powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
#Ubuntu Mono Derivative Powerline

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i '' "s/prompt_segment blue "'$CURRENT_FG'" '%~'/prompt_segment blue "'$CURRENT_FG'" '%2~'/" ~/.oh-my-zsh/themes/agnoster.zsh-theme

cp zshrc ~/.zshrc
cp zprofile ~/.zprofile
cp zprofile_k8s ~/.zprofile_k8s
cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf
cp com.googlecode.iterm2.plist ~/
cp gitconfig ~/
cp vscode_settings.json ~/Library/Application\ Support/Code/User/settings.json
cp vscode_settings.json ~/Library/Application\ Support/Cursor/User/settings.json
cp vscode_settings.json ~/Library/Application\ Support/Antigravity/User/settings.json
cp vscode_keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
cp vscode_keybindings.json ~/Library/Application\ Support/Cursor/User/keybindings.json
cp vscode_keybindings.json ~/Library/Application\ Support/Antigravity/User/keybindings.json

#cp intellij.idea.properties ~/Library/Application\ Support/JetBrains/IntelliJIdea2024.2/idea.properties

npm install -g @json2csv/cli @commitlint/cli @commitlint/config-conventional conventional-changelog
pip install ruff pytest pytest-cov pytest-mock html2jirawiki
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash

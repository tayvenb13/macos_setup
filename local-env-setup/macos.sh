#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#reload shell
source ~/.bashrc
# Install Xcode Command Line Tools
xcode-select --install
# Install brew packages
xargs brew install < my_brew.txt
brew install --cask font-fira-code-nerd-font
brew install --cask github
brew install --cask iterm2
brew install --cask firefox
brew install --cask rectangle
brew install --cask alt-tab
brew install --cask legcord

# Install Starship
brew install starship
# Add eval "$(starship init zsh)" to ~/.zshrc
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
#reload shell
source ~/.zshrc

# Set iTerm2 profile Font
PROFILE_NAME="Default" # Replace with your iTerm2 profile name
FONT_NAME="Fira Code Nerd Font" # Replace with your desired font name
FONT_SIZE="14" # Replace with your desired font size

osascript <<EOF
tell application "iTerm2"
  tell current window
    tell current session
      set profile name to "$PROFILE_NAME"
      tell the current profile
        set normal font to "$FONT_NAME $FONT_SIZE"
        set non ascii font to "$FONT_NAME $FONT_SIZE"
      end tell
    end tell
  end tell
end tell
EOF

starship preset gruvbox-rainbow -o ~/.config/starship.toml

#configure git
git config --global user.name "Tayven Bigelow"
git config --global user.email "gwathruoko@gmail.com"
git config --global push.autoSetupRemote true

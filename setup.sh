#!/bin/sh -

add_to_dock()
{
  defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/$1.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
}

# ask for sudo upfront
sudo -v

# Install xcode command line tools
xcode-select --install
# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Install Brew Packages
brew bundle install

# setup oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# remove all items from dock
defaults write com.apple.dock persistent-apps -array

# #add items to dock
add_to_dock 'Google Chrome'
add_to_dock 'iTerm'
add_to_dock 'Visual Studio Code'
add_to_dock 'IntelliJ IDEA'
add_to_dock 'DataGrip'
add_to_dock 'Slack'
add_to_dock 'Microsoft Outlook'
add_to_dock 'Authy Desktop'
killall Dock

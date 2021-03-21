#!/bin/sh -

add_to_dock()
{
  defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/$1.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
}

# Install xcode command line tools
#xcode-select --install

# Install Homebrew
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Brew Packages
#brew bundle install

# setup oh my zsh
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# remove all items from dock
defaults write com.apple.dock persistent-apps -array

# #add items to dock
add_to_dock 'Safari'
add_to_dock 'IntelliJ IDEA'
add_to_dock 'DataGrip'
add_to_dock 'GoLand'
add_to_dock 'PyCharm'
add_to_dock 'Visual Studio Code'
add_to_dock 'iTerm'
add_to_dock 'Conduktor'
add_to_dock 'Postman'
add_to_dock 'Authy Desktop'

add_to_dock 'Slack'
add_to_dock 'Microsoft Outlook'
add_to_dock 'Microsoft Teams'

add_to_dock 'Mail'
add_to_dock 'Calendar'

add_to_dock 'draw.io'

add_to_dock 'Microsoft Word'
add_to_dock 'Microsoft PowerPoint'
add_to_dock 'Microsoft Excel'
add_to_dock 'Microsoft OneNote'

add_to_dock 'System Preferences'

killall Dock

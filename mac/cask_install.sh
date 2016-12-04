#!/bin/bash

# Install cask first
brew install brew-cask

# Software
brew cask install iterm2
brew cask install google-chrome
brew cask install google-drive
brew cask install evernote
brew cask install omnifocus

# Plug-in
brew cask install alfred
brew cask install flux
brew cask install spectacle

# Oper source software
brew cask install vlc
brew cask install thyme
brew cask install the-unarchiver

# Cleanup
brew cask cleanup

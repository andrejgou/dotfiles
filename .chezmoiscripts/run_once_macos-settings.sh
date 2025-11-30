#!/bin/bash

echo "Configuring macOS settings..."

# Finder: show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Dock: auto-hide
defaults write com.apple.dock autohide -bool true

# Dock: faster animation
defaults write com.apple.dock autohide-time-modifier -float 0.5

# Dock: smaller icon size
defaults write com.apple.dock tilesize -int 48

# Restart Finder and Dock to apply changes
killall Finder
killall Dock

echo "macOS settings applied!"

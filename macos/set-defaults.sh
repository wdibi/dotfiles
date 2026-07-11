#!/bin/bash

# Quit system preferences and settings
osascript -e 'tell application "System Preferences" to quit' 2>/dev/null
osascript -e 'tell application "System Settings" to quit' 2>/dev/null

###############################################################################
# Global / NSGlobalDomain                                                     #
###############################################################################

# Dark mode
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# Show all file extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Scrollbar visibility
defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"

# Disable press-and-hold for keys (enable key repeat)
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Fast key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15

# Use Fn key to change input source
defaults write com.apple.HIToolbox AppleFnUsageType -int 2

###############################################################################
# Dock                                                                        #
###############################################################################

# Auto-hide the Dock
defaults write com.apple.dock autohide -bool true

# No delay for auto-hide
defaults write com.apple.dock autohide-delay -float 0

# No animation for auto-hide
defaults write com.apple.dock autohide-time-modifier -float 0

# Dock icon size
defaults write com.apple.dock tilesize -int 32

# Disable magnification
defaults write com.apple.dock magnification -bool false

# Minimize using scale effect
defaults write com.apple.dock mineffect -string "scale"

# Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

# Don't animate opening applications
defaults write com.apple.dock launchanim -bool false

# Show indicators for open applications
defaults write com.apple.dock show-process-indicators -bool true

# Don't show recent applications
defaults write com.apple.dock show-recents -bool false

# Speed up Expose animation
defaults write com.apple.dock expose-animation-duration -float 0.1

# Enable spring-loading for all Dock items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

###############################################################################
# Finder                                                                      #
###############################################################################

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show POSIX path in title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Use list view by default
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Disable all Finder animations
defaults write com.apple.finder DisableAllAnimations -bool true

###############################################################################
# Screenshots                                                                 #
###############################################################################

# Save screenshots to ~/Desktop/screenshots
defaults write com.apple.screencapture location -string "${HOME}/Desktop/screenshots"
defaults write com.apple.iphonesimulator "ScreenShotSaveLocation" -string "~/Desktop/screenshots/simulator"

# Default to selection mode
defaults write com.apple.screencapture style -string "selection"

###############################################################################
# Trackpad                                                                    #
###############################################################################

# Enable tap to click
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# Enable three-finger drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool false
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool false

###############################################################################
# Activity Monitor                                                            #
###############################################################################

# Show all processes
defaults write com.apple.ActivityMonitor ShowCategory -int 100

# Sort by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

# Show CPU usage in Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Kill apps
for app in "Activity Monitor" "Dock" "Finder" "SystemUIServer"; do
    killall "${app}" &>/dev/null
done

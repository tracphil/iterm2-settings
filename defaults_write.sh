#!/bin/bash

WHOAMI=$(whoami)

ITERM2_SETTINGS=${HOME}/Projects/${WHOAMI}/projects/iterm2-settings

mkdir -p ${ITERM2_SETTINGS}

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "${ITERM2_SETTINGS}"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

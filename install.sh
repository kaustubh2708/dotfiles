#!/bin/bash

# Exit on error
set -e

# Colors for output
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

# Function to print status messages
print_status() {
    printf "\n${MAGENTA}%s${NORMAL}\n" "$1"
}

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

printf "\n${WHITE}==============================================================================

SETTING UP YOUR COMPUTER!

==============================================================================${NORMAL}\n"

# Fix macOS Mojave antialiased fonts
# printf "\n${MAGENTA}Fixing Mojave fonts to look normal again...${NORMAL}\n"
# eval "defaults write -g CGFontRenderingFontSmoothingDisabled -bool NO"

# Show hidden dotfiles in finder
print_status "Showing hidden files to be visible in Finder..."
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder

# Install XCode Command Line Tools if not already installed
if ! command_exists xcode-select; then
    print_status "Installing XCode Command Line Tools..."
    xcode-select --install
else
    print_status "XCode Command Line Tools already installed"
fi

# Install Homebrew if not already installed
if ! command_exists brew; then
    print_status "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    print_status "Homebrew already installed"
fi

# If this is an M1 mac
if [[ `uname -m` == 'arm64' ]]; then
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "/Users/$USER/.zprofile"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install Yarn if not already installed
if ! command_exists yarn; then
    print_status "Installing Yarn..."
    brew install yarn --ignore-dependencies
else
    print_status "Yarn already installed"
fi

# Install Composer if not already installed
if ! command_exists composer; then
    print_status "Installing Composer..."
    brew install composer
else
    print_status "Composer already installed"
fi

printf "\n${MAGENTA}Installing other brew casks...${NORMAL}\n"
eval "brew install gh"

# Install Oh My Zsh if not already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    print_status "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    print_status "Oh My Zsh already installed"
fi

# Install GitHub CLI if not already installed
if ! command_exists gh; then
    print_status "Installing GitHub CLI..."
    brew install gh
else
    print_status "GitHub CLI already installed"
fi

# Install spaceship prompt if not already installed
if [ ! -d "$ZSH_CUSTOM/themes/spaceship-prompt" ]; then
    print_status "Installing spaceship prompt..."
    git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
else
    print_status "Spaceship prompt already installed"
fi

# Install ZSH plugins if not already installed
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
    print_status "Installing ZSH autosuggestions plugin..."
    git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
else
    print_status "ZSH autosuggestions plugin already installed"
fi

if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
    print_status "Installing ZSH syntax highlighting plugin..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
else
    print_status "ZSH syntax highlighting plugin already installed"
fi

# Copy ZSH config
print_status "Copying ZSH config into ~/.zshrc..."
cp ./.zshrc ~/.zshrc

# Install NVM if not already installed
if [ ! -d "$HOME/.nvm" ]; then
    print_status "Installing NVM..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
    # Refresh ZSH config
    source ~/.zshrc
    nvm install --lts
else
    print_status "NVM already installed"
fi

# Install fonts
# eval "sh scripts/fonts.sh"

# Open links for apps that can't be downloaded via brew cask
print_status "Opening links for apps to download..."

# Browsers
open https://www.google.com/chrome/
open https://www.mozilla.org/en-US/firefox/new/

# Productivity
open https://rectangleapp.com/
open https://maccy.app/
open https://www.alfredapp.com/
open https://1password.com/downloads/mac/
open https://itunes.apple.com/us/app/next-meeting/id1017470484?mt=12
open https://ticktick.com/about/download
open https://www.notion.so/desktop

# Development
open https://code.visualstudio.com/
open https://www.iterm2.com/
open https://docs.docker.com/docker-for-mac/install/

# Design
open https://www.figma.com/downloads/

# Communication
open https://slack.com/downloads/mac
open https://sparkmailapp.com/
open https://zoom.us/download

# Miscellaneous
open https://www.spotify.com/us/download/mac/

# Follow the instructions on GitHub to generate a new SSH key and add it to your Github account.
printf "\n${WHITE}==============================================================================

${GREEN}All set!

${WHITE}Make sure to follow the instructions on GitHub to generate a new SSH key and then add the key to your GitHub account.

==============================================================================${NORMAL}\n"

open https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key
open https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account

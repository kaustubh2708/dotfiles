# macOS Development Environment Setup

This repository contains a setup script to configure a new macOS development environment with all the essential tools and applications for development.

## Features

The setup script (`install.sh`) automates the installation and configuration of:

- **System Preferences**
  - Shows hidden files in Finder
  - Configures basic system settings

- **Development Tools**
  - XCode Command Line Tools
  - Homebrew (package manager)
  - Node.js (via NVM)
  - Yarn (Node.js package manager)
  - Composer (PHP package manager)
  - GitHub CLI

- **Shell Environment**
  - Oh My Zsh
  - Spaceship prompt
  - ZSH plugins (autosuggestions, syntax highlighting)
  - Custom ZSH configuration

- **Applications**
  - Browsers (Chrome, Firefox)
  - Development tools (VS Code, iTerm2, Docker)
  - Productivity apps (Rectangle, Maccy, Alfred, 1Password)
  - Communication tools (Slack, Spark, Zoom)
  - Design tools (Figma)
  - Miscellaneous apps (Spotify)

## Prerequisites

- macOS operating system
- Administrative privileges
- Internet connection

## Usage

1. Clone this repository:
   ```bash
   git clone https://github.com/kaustubh2708/dotfiles-main.git
   cd dotfiles-main
   ```

2. Make the script executable:
   ```bash
   chmod +x install.sh
   ```

3. Run the installation script:
   ```bash
   ./install.sh
   ```

4. Follow any on-screen instructions, particularly for:
   - Installing XCode Command Line Tools
   - Setting up SSH keys for GitHub
   - Installing applications that require manual download

## Features of the Installation Script

- **Idempotent**: Can be run multiple times safely
- **Error Handling**: Stops on any error to prevent partial installations
- **Progress Feedback**: Shows clear status messages for each step
- **Dependency Checks**: Verifies if tools are already installed
- **M1 Mac Support**: Includes specific configurations for Apple Silicon

## Manual Steps After Installation

1. **Generate SSH Key**:
   - Follow the GitHub instructions that open automatically
   - Add the SSH key to your GitHub account

2. **Configure Applications**:
   - Set up your preferences in each installed application
   - Configure your development environment settings

3. **Additional Setup**:
   - Configure your Git identity
   - Set up any additional development tools specific to your needs

## Customization

You can customize the installation by:

1. Modifying the `install.sh` script to add or remove applications
2. Editing the `.zshrc` file to change shell configurations
3. Adding additional configuration files to the repository

## Contributing

Feel free to submit issues and enhancement requests!

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Install

1. Download the repo ZIP and extract

2. Run the install script

   ```bash
   sh install.sh
   ```

## Import iTerm theme

- **iTerm2** > **Profiles**
- Click on **+** to create a new profile
- Navigate to **Colors** tab
- **Color Presets** > **Import**
- Select the `halcyon.itermcolors` file in this repo
- Click on **Color Presets** and choose `halcyon`

## Update ZSH config

[`.zshrc`](/.zshrc)

## Github SSH Key Setup

[Generating a new SSH key and adding it to the ssh-agent](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

[Adding A New SSH Key to Your Github Account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

[Signing GitHub commits with GPG](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits)

## Things

<details>
<summary>Package Managers</summary>

- [NVM](https://github.com/creationix/nvm/)
- [Yarn](https://yarnpkg.com/en/)
- [Homebrew](http://brew.sh/)

</details>

<details>
<summary>CLI Tools & Utilities</summary>

- [XCode Command Line Tools](https://developer.apple.com/xcode/downloads/)
- [ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- [Spaceship Prompt for ZSH](https://github.com/spaceship-prompt/spaceship-prompt#oh-my-zsh)
- [Trash](https://github.com/sindresorhus/trash-cli)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-completions](https://github.com/zsh-users/zsh-completions)
- [zsh-you-should-use](https://github.com/MichaelAquilina/zsh-you-should-use)
- [rupa's z](https://github.com/rupa/z/)

</details>

<details>
<summary>Browsers</summary>

- [Chrome](https://www.google.com/chrome/browser/desktop/)
- [Firefox](https://www.mozilla.org/en-US/firefox/new/)

</details>

<details>
<summary>Productivity</summary>

- [Rectangle](https://rectangleapp.com/)
- [Maccy](https://maccy.app/)
- [Raycast](https://www.raycast.com/)
- [1Password](https://1password.com/)
- [Meeting Bar](https://meetingbar.app/)
- [Tick Tick](https://ticktick.com/about/download)
- [Notion](https://www.notion.so/desktop)

</details>

<details>
<summary>Development</summary>

- [Visual Studio Code](https://code.visualstudio.com/)
- [iTerm2](https://www.iterm2.com/)
- [Postman](https://www.getpostman.com/)
- [Docker](https://docs.docker.com/docker-for-mac/install/)
- [XCode](https://developer.apple.com/xcode/)
- [Transmit](https://apps.apple.com/us/app/transmit-5/id1436522307?mt=12)

</details>

<details>
<summary>Design</summary>

- [Figma](https://www.figma.com/downloads/)

</details>

<details>
<summary>Communication</summary>

- [Slack](https://slack.com/downloads/mac)
- [Spark](https://sparkmailapp.com/)
- [Zoom](https://zoom.us/download)

</details>

<details>
<summary>Miscellaneous</summary>

- [Spotify](https://www.spotify.com/us/download/mac/)
<!-- - [Rocket](http://matthewpalmer.net/rocket/) -->

</details>

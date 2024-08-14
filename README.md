# Introduction
This repository is meant to add my personal configurations to a freshly installed macOS machine. 
The following scripts are meant to be run sequentially.


# Manual Installations
- The first steps are to configure the default Apps in LaunchPad as well as install paid apps on the App Store.
- Then configure Finder towards my personal taste.
- Then install the following third-party applications.
	- [Arc Browser](https://arc.net/)
	- [Homebrew Package Manager](https://brew.sh/)


# Installation
This script clones this repo to the home directory and removes unnecessary files.
```sh
git clone https://github.com/KZapp720/Dotfiles.git ~/temp-dotfiles
rsync -avh --progress ~/temp-dotfiles/ ~
rm -rf ~/temp-dotfiles
rm -rf ~/.git
rm ~/LICENSE
rm ~/README.md
```


# Automater
This script moves the workflows in ~/.config/automator/ to ~/Library/Services/.
```sh

```


# Arc
This script copies the configuration file in ~/.config/arc to TBD.
```sh

```


# Homebrew
This script installs the necessary casks and formulas.
```sh
brew install karabiner-elements
brew install wezterm
brew install zed
```

This repository is meant to add my personal configurations to a freshly installed macOS machine. 
The following scripts are meant to be run sequentially.


# Manual Configurations
- The first steps are to configure the default Apps in LaunchPad as well as install paid apps on the App Store.
- Then configure Finder towards my personal taste.
- Then install the following third-party applications.
	- [Arc Browser](https://arc.net/)
	- [Homebrew Package Manager](https://brew.sh/)


# Setup
This script setups up the directories and files for the configuration.
```sh
mkdir ~/.config/
mkdir ~/.config/automator/
mkdir ~/.config/arc/
mkdir ~/.config/karabiner/
touch .zprofile
```


# Automater
This script moves the workflows in ~/.config/automator/ to ~/Library/Services/.
```sh
mv -r $HOME/.config/automator/*.workflow $HOME/Library/Services/
rmdir $HOME/.config/automator
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

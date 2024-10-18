# Introduction
This repository is meant to add my personal configurations to a freshly installed macOS machine. 
The following scripts are meant to be run sequentially.


# Manual Configurations
- Add the `⌘ b` shortcut to the `Enter Full Screen` and `Exit Full Screen` commands in `System Settings -> Keyboard -> Keyboard Shortcuts`.
- Configure the default Apps in LaunchPad as well as install paid apps on the App Store.
- Configure Finder.
- Install the following third-party applications.
	- [Arc Browser](https://arc.net/)
	- [Homebrew Package Manager](https://brew.sh/)


# Installation
This script clones this repo to the home directory and removes unnecessary files.
```sh
git clone https://github.com/KZapp720/Dotfiles.git $HOME/temp-dotfiles/
rsync -avh --progress $HOME/temp-dotfiles/ $HOME/
rm -rf $HOME/temp-dotfiles/
rm -rf $HOME/.git/
rm $HOME/LICENSE
rm $HOME/README.md
```


# Automater
This script adds the zipped automator workflows to the services directory and removes all the unused files.
```sh
mv "$HOME/.config/automator/Workflows.zip" "$HOME/Library/Services/"
rm -rf "$HOME/.config/automator/"
unzip -q "$HOME/Library/Services/Workflows.zip" -d "$HOME/Library/Services/Workflows"
mv "$HOME/Library/Services/Workflows/"*.workflow "$HOME/Library/Services/"
rm -rf "$HOME/Library/Services/Workflows/"
rm "$HOME/Library/Services/Workflows.zip"
```


# Arc
This script sets the configuration files for Arc and Safari.
```sh

```


# Homebrew
This script installs the necessary casks and formulas.
```sh
brew install karabiner-elements
brew install mactex-no-gui
brew install nikitabobko/tap/aerospace
brew install wezterm
brew install zed

brew install bat
brew install entr
brew install eza
brew install felixkratz/formulae/borders
brew install fzf
brew install gh
brew install ghc
brew install haskell-language-server
brew install helix
brew install lazygit
brew install lazysql
brew install python
brew install ripgrep
brew install rust
brew install rust-analyzer
brew install serpl
brew install sqlite
brew install starship
brew install typst
brew install yazi
brew install zoxide
brew install zsh-autosuggestions
brew install zsh-fast-syntax-highlighting
```

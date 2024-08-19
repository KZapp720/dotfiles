# Introduction
This repository is meant to add my personal configurations to a freshly installed macOS machine. 
The following scripts are meant to be run sequentially.


# Manual Configurations
- Add the `⌘ b` shortcut to "Enter Full Screen" and "Exit Full Screen in `System Settings -> Keyboard -> Keyboard Shortcuts`.
- Configure the default Apps in LaunchPad as well as install paid apps on the App Store.
- Configure Finder.
- Install the following third-party applications.
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
This script adds the zipped automator workflows to the services directory and removes all the unused files.
```sh
mv "$HOME/.config/automator/"*.zip "$HOME/Library/Services/"
rm -rf "$HOME/.config/automator/"

for zip_file in "$HOME/Library/Services/"*.zip; do
  [ -f "$zip_file" ] || continue
  extract_dir="${zip_file%.zip}"
  mkdir -p "$extract_dir"
  unzip -q "$zip_file" -d "$extract_dir"
  mv "$extract_dir"/*.workflow "$HOME/Library/Services/"
  rm -r "$extract_dir"
  rm "$zip_file"
done
```


# Web Browsers
This script sets the configuration files for Arc and Safari.
```sh

```


# Homebrew
This script installs the necessary casks and formulas.
```sh
brew install discord
brew install karabiner-elements
brew install mactex-no-gui
brew install wezterm
brew install zed

brew install entr
brew install eza
brew install fzf
brew install gh
brew install ghc
brew install haskell-language-server
brew install helix
brew install koekeishiya/formulae/skhd
brew install koekeishiya/formulae/yabai
brew install lazygit
brew install ripgrep
brew install rust
brew install rust-analyzer
brew install starship
brew install thefuck
brew install typst
brew install zoxide
brew install zsh-autosuggestions
brew install zsh-fast-syntax-highlighting
```

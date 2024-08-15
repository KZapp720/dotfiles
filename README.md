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
```sh
SCRIPTS_PATH="$HOME/.config/automator"
AUTOMATOR_WORKFLOWS_PATH="$HOME/Library/Services"

create_workflow_dir() {
    local workflow_name="$1"
    local workflow_dir="$AUTOMATOR_WORKFLOWS_PATH/${workflow_name}.workflow"
    
    if [ ! -d "$workflow_dir" ]; then
        mkdir -p "$workflow_dir"
    fi
    
    echo "$workflow_dir"
}

create_plist_file() {
    local workflow_dir="$1"
    local script_name="$2"
    
    cat > "$workflow_dir/Info.plist" <<EOL
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>AMApplicationBuild</key>
    <string>18D</string>
    <key>AMApplicationVersion</key>
    <string>2.10</string>
    <key>AMType</key>
    <string>Action</string>
    <key>AMWorkflowActions</key>
    <array>
        <dict>
            <key>AMAccepts</key>
            <dict>
                <key>Apple.NSString</key>
                <true/>
                <key>com.apple.propertylist</key>
                <true/>
                <key>public.item</key>
                <true/>
                <key>public.folder</key>
                <true/>
                <key>public.file-url</key>
                <true/>
            </dict>
            <key>AMActionVersion</key>
            <string>2.0</string>
            <key>AMBundleIdentifier</key>
            <string>com.apple.Automator.RunShellScript</string>
            <key>AMConvertSourceTypes</key>
            <true/>
            <key>AMDefaultParameters</key>
            <dict>
                <key>action</key>
                <string>/bin/zsh</string>
                <key>input</key>
                <string>arguments</string>
                <key>shellScript</key>
                <string>./${script_name}.zsh</string>
            </dict>
            <key>AMParameterProperties</key>
            <dict>
                <key>input</key>
                <dict>
                    <key>default</key>
                    <string>arguments</string>
                    <key>display</key>
                    <string>none</string>
                </dict>
                <key>shellScript</key>
                <dict>
                    <key>display</key>
                    <string>popup</string>
                </dict>
            </dict>
            <key>AMSerializedParameters</key>
            <dict>
                <key>action</key>
                <string>/bin/zsh</string>
                <key>input</key>
                <string>arguments</string>
                <key>shellScript</key>
                <string>./${script_name}.zsh</string>
            </dict>
            <key>AMWorkflowActionIsEnabled</key>
            <true/>
            <key>AMWorkflowInputDataTypeIdentifiers</key>
            <array/>
            <key>AMWorkflowOutputDataTypeIdentifiers</key>
            <array/>
        </dict>
    </array>
    <key>AMWorkflowType</key>
    <string>QuickAction</string>
</dict>
</plist>
EOL
}

copy_script_to_workflow() {
    local workflow_dir="$1"
    local script_name="$2"
    
    cp "$SCRIPTS_PATH/${script_name}.zsh" "$workflow_dir/${script_name}.zsh"
}

for script_file in "$SCRIPTS_PATH"/*.zsh; do
    script_name=$(basename "$script_file" .zsh)
    workflow_dir=$(create_workflow_dir "$script_name")
    create_plist_file "$workflow_dir" "$script_name"
    copy_script_to_workflow "$workflow_dir" "$script_name"
done

echo "All workflows created successfully!"
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

export EDITOR="hx"
export PATH="/opt/homebrew/bin:$PATH"
export VISUAL="zed"
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$HOME/.config/zshell"

setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS

source <(fzf --zsh)
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

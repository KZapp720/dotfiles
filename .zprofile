export CLOUD="$HOME/Library/Mobile Documents/com~apple~CloudDocs"
export EDITOR="hx"
export PATH="/opt/homebrew/bin:$HOME/.cargo/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$HOME/.config/zshell"

export HELIX_RUNTIME="$HOME/.cargo/helix/runtime"

source <(fzf --zsh)
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS

bindkey "^[[1;3D" backward-word
bindkey "^[[1;3C" forward-word
bindkey "^[[H"    beginning-of-line
bindkey "^[[F"    end-of-line
bindkey "^[[3~"   kill-whole-line
bindkey "^U"      undo
bindkey "^R"      redo

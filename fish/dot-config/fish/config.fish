if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Abbreviations
abbr --add g git
abbr --add b bat
abbr --add j just

abbr --add ga git add
abbr --add gc git commit
abbr --add gcm git commit -m
abbr --add gs git status

# Aliases
if type -q eza
    alias l="eza --icons --git"
    alias ll="eza --icons --long --header --group --created --modified --git -a"
    alias ls="eza --icons --git"
end

# Environment
set -x EDITOR "vim"
set -x GOPATH (realpath ~/.go)
set -x GPG_TTY (tty)
set -x HOMEBREW_BUNDLE_FILE ~/Projects/dotfiles/Brewfile
set -x LANG "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_STATE_HOME $HOME/.local/state

# Path
fish_add_path -m /bin
fish_add_path -m /usr/bin
fish_add_path -m /usr/local/bin
fish_add_path -m /opt/homebrew/bin
fish_add_path -m /nix/var/nix/profiles/default/bin
fish_add_path -m ~/.nix-profile/bin
fish_add_path -m ~/.local/state/nix/profile/bin
fish_add_path ~/.bin
fish_add_path -m ~/.local/bin

# Direnv
if type -q direnv
    direnv hook fish | source
end

# Zoxide
if type -q zoxide
    zoxide init fish | source
end

# Cargo
if type -q cargo
    source "$HOME/.cargo/env.fish"
end
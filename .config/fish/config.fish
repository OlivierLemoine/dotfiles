# Remove greeting fish message
set fish_greeting

# Set common environement variable
set -gx EDITOR hx
set -gx TERMINAL /usr/bin/alacritty
set -gx GPG_TTY (tty)
set -gx NIXPKGS_ALLOW_UNFREE 1

# Atuin init
set -gx ATUIN_NOBIND "true"
atuin init fish | source
bind \cr _atuin_search
bind -M insert \cr _atuin_search

# Some usefull aliases
alias cat="bat"
alias mkdir="mkdir -pv"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias ls="exa -la --group-directories-first --header --git"
alias nvimdiff="nvim -d"

# Define helper functions
function hex
    printf "%x" $argv
end

function dec
    printf "%i" $argv
end

function exp
    echo "scale = 2; $argv" | bc
end

any-nix-shell fish --info-right | source

# End config and run prompt
starship init fish | source

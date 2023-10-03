# Remove greeting fish message
set fish_greeting

# Set common environement variable
set -gx EDITOR hx
set -gx TERMINAL /usr/bin/alacritty
set -gx GPG_TTY (tty)
set -gx NIXPKGS_ALLOW_UNFREE 1
# set -gx RUSTFLAGS "-C target-cpu=native"
set -gx RUSTFLAGS "-C target-cpu=native -C link-arg=-fuse-ld=/nix/store/cz5p82b5kqwx8j9692a8l9drrfgn337g-system-path/bin/mold"

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

function grep-color
    egrep --color=always -e "^" -e "$argv"
end

any-nix-shell fish --info-right | source

# End config and run prompt
starship init fish | source

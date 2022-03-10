# Remove greeting fish message
set fish_greeting

# Set common environement variable
set -x EDITOR nvim
set -x ZELLIJ_CONFIG_DIR $HOME/.config/zellij/
set -x TERMINAL /usr/bin/alacritty

if [ (uname -s) = "Darwin" ]
    # Set MacOs environement variable
    set -x ANDROID_HOME $HOME/Library/Android/sdk/
    bass source $HOME/.cargo/env
else
    # Set Arch environement variable
    set PATH $PATH $HOME/Documents/aarch64-none-elf/bin
    set PATH $PATH $HOME/.cargo/bin
    set PATH $PATH $HOME/.yarn/bin
    set PIP_USER no
end

# Some usefull aliases
alias vim="nvim"
alias cat="bat"
alias mkdir="mkdir -pv"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias ls="exa -la --group-directories-first --header --git"
alias nvimdiff="nvim -d"
alias co="git checkout"
alias undo="git checkout --"
alias merge="git merge"
alias rebase="git rebase"

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

jj debug completion --fish | source

set -gx HOMEBREW_GITHUB_API_TOKEN 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
set -gx HOMEBREW_GITHUB_API_TOKEN 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

# End config and run prompt
starship init fish | source

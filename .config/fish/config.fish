# Remove greeting fish message
set fish_greeting

# Source bashrc
bass source $HOME/.bashrc

# Set common environement variable
bass source $HOME/.cargo/env
set EDITOR nvim

set ZELLIJ_CONFIG_DIR $HOME/.config/zellij/

if [ (uname -s) = "Darwin" ]
    # Set MacOs environement variable
    set ANDROID_HOME $HOME/Library/Android/sdk/
    # set PATH $PATH $HOME/Documents/protoc/protoc-3.17.3-osx-x86_64/bin/
else
    # Set Arch environement variable
    set PATH $PATH $HOME/.local/bin/node/bin/ $HOME/Documents/aarch64-none-elf/bin/
end

# Some usefull aliases
alias vim="nvim"
alias cat="bat"
alias rm="rm -i"
alias mv="mv -i"
alias ls="exa -la --group-directories-first --header --git"

# Define helper functions
function hex
    printf "%x" $argv
end

function dec
    printf "%i" $argv
end

# End config and run prompt
starship init fish | source

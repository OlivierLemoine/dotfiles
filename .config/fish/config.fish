# Remove greeting fish message
set fish_greeting

# Set common environement variable
set EDITOR nvim
set ZELLIJ_CONFIG_DIR $HOME/.config/zellij/

if [ (uname -s) = "Darwin" ]
    # Set MacOs environement variable
    set ANDROID_HOME $HOME/Library/Android/sdk/
    bass source $HOME/.cargo/env
    # set PATH $PATH $HOME/Documents/protoc/protoc-3.17.3-osx-x86_64/bin/
else
    # Set Arch environement variable
    set PATH $PATH $HOME/Documents/aarch64-none-elf/bin
    set PATH $PATH $HOME/.cargo/bin
    set PATH $PATH $HOME/.yarn/bin
    set PIP_USER no
    set DAEDALUS /run/media/oli/d951c2a3-b549-486e-84be-4b54b48712de/home/oli/Daedalus
    set GITHUB /run/media/oli/d951c2a3-b549-486e-84be-4b54b48712de/home/oli/Documents/Github
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

function exp
    echo "scale = 2; $argv" | bc
end

# End config and run prompt
starship init fish | source

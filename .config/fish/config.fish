# Remove greeting fish message
set fish_greeting

# Source bashrc
bass source $HOME/.bashrc

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
    set PATH $PATH $HOME/Documents/aarch64-none-elf/bin/
    set PATH $PATH $HOME/.expressif/tools/xtensa-esp32-elf-clang/esp-12.0.1-20210914-x86_64-unknown-linux-gnu/bin/

    set LIBCLANG_PATH $HOME/.espressif/tools/xtensa-esp32-elf-clang/esp-12.0.1-20210914-x86_64-unknown-linux-gnu/lib/
    set PIP_USER no

    set WINEPREFIX /mnt/d/.wine
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

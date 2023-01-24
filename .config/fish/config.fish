# Remove greeting fish message
set fish_greeting

# Set common environement variable
set -gx EDITOR nvim
set -gx TERMINAL /usr/bin/alacritty
set -gx GPG_TTY (tty)

if [ (uname -s) = "Darwin" ]
    # Set MacOs environement variable
    set -gx ANDROID_HOME $HOME/Library/Android/sdk/
    bass source $HOME/.cargo/env
else
    # Set Arch environement variable
    set PATH $PATH $HOME/Documents/aarch64-none-elf/bin
    set PATH $PATH $HOME/.cargo/bin
    set PATH $PATH $HOME/.yarn/bin
    set PATH $PATH $HOME/.local/bin
    set PIP_USER no

	set -gx ATUIN_NOBIND "true"
	atuin init fish | source
	bind \cr _atuin_search
	bind -M insert \cr _atuin_search
end

if [ oli.arch.fish ]
    #fish oli.arch.fish
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

# End config and run prompt
starship init fish | source

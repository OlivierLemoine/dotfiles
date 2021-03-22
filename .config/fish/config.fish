set fish_function_path $fish_function_path "$HOME/.local/lib/python3.8/site-packages/powerline/bindings/fish/"
powerline-setup

set PATH $PATH $HOME/.local/bin/node/bin/ $HOME/Documents/aarch64-none-elf/bin/
set EDITOR nvim

bass source $HOME/.bashrc

#source (navi widget fish)

alias vim="nvim"
alias cat="bat"
alias rm="rm -i"
alias mv="mv -i"
alias ls="exa -la --group-directories-first"

function hex
    printf "%x" $argv
end

function dec
    printf "%i" $argv
end

set fish_greeting

starship init fish | source

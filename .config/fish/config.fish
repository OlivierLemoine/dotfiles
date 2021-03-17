set fish_function_path $fish_function_path "$HOME/.local/lib/python3.8/site-packages/powerline/bindings/fish/"
powerline-setup

set PATH $PATH $HOME/.local/bin/node/bin/ $HOME/.wine/drive_c/Program\ Files/Image-Line/FL\ Studio\ 20/ $HOME/Documents/aarch64-none-elf/bin/

bass source $HOME/.bashrc

#source (navi widget fish)

alias vim="nvim"
alias where="which"

function hex
    printf "%x" $argv
end

function dec
    printf "%i" $argv
end

set fish_greeting

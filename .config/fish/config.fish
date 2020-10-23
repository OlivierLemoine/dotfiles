set fish_function_path $fish_function_path "$HOME/.local/lib/python3.7/site-packages/powerline/bindings/fish/"
powerline-setup

bass source $HOME/.bashrc
bass source $HOME/.cargo/env

source (navi widget fish)

alias vim="nvim"

set fish_greeting

cd

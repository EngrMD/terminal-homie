#!/bin/zsh

if [ -f ~/.terminal_homie_greetings ]; then
    echo "Removing old installation: ~/.terminal_homie_greetings"
    rm -f ~/.terminal_homie_greetings
fi

if [ -f ~/terminal_homie.sh ]; then
    echo "Removing old installation: ~/terminal_homie.sh"
    rm -f ~/terminal_homie.sh
fi

chmod +x terminal_homie.sh

cp -f ./terminal_homie_greetings ~/.terminal_homie_greetings
cp -f ./terminal_homie.sh ~/terminal_homie.sh

greeting_script_path=$(realpath ~/terminal_homie.sh)

if ! grep -qF "$greeting_script_path" ~/.zshrc; then
    echo "$greeting_script_path" >> ~/.zshrc
fi

source ~/.zshrc

echo "Installation complete. Enjoy your greetings!"

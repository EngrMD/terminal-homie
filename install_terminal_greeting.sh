#!/bin/zsh

set -e

chmod +x terminal_homie.sh

cp -f ./terminal_* $HOME/

greeting_script_path=$(realpath ~/terminal_homie.sh)

if ! grep -qF "$greeting_script_path" ~/.zshrc; then
    echo "$greeting_script_path" >> ~/.zshrc
fi

echo "Installation complete. Enjoy your terminal homie, GOAT!"
cat terminal_gigachad
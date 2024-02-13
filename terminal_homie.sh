#!/bin/zsh

source $HOME/terminal_homie_utils.sh
greetings_file="$HOME/terminal_homie_greetings"

if [ -e "$greetings_file" ]; then
    num_lines=$(( $(wc -l < "$greetings_file") + 1 ))
    random_line=$((RANDOM % num_lines + 1))
    if [ "$random_line" = 1 ]; then
        echo_gigachad "terminal_gigachad"
        selected_greeting=$(sed -n "${random_line}p" "$greetings_file")
        echo "\n ${selected_greeting}"
    else
        selected_greeting=$(sed -n "${random_line}p" "$greetings_file")
        echo "$selected_greeting"
    fi
else
    echo "File missing."
fi

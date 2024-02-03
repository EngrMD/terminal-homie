#!/bin/zsh

greetings_file="$HOME/.terminal_homie_greetings"

if [ -e "$greetings_file" ]; then
    num_lines=$(wc -l < "$greetings_file")
    random_line=$((RANDOM % num_lines + 1))
    selected_greeting=$(sed -n "${random_line}p" "$greetings_file")
    echo "$selected_greeting"
else
    echo "File missing."
fi

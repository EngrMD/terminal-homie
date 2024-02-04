terminal_gigachad="terminal_gigachad"

echo_gigachad() {
    if [ -e "$terminal_gigachad" ]; then
        cat "$terminal_gigachad"
    else
        echo "File missing."
    fi
}
find . \( -type f -o -type d \) | wc -l | sed 's/^ *//' | cat -e

cat /etc/passwd | grep -v '#' | awk 'NR%2==0' | sed 's/:\(.*\)//' | rev | sort -r | awk -v lb="$FT_LINE1" -v lt="$FT_LINE2" 'NR>=lb && NR<=lt' | awk '{print}' ORS=', ' | sed "s/\, $/./"

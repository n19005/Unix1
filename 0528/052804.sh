sudo ls -lR /var | awk '{print $9, $5}' | sort -k 2 -nr | head -n 5

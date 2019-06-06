sudo ls -lR /var | awk "{print $9, $5}" | sort -nr | head -n 5

cat /etc/services | awk '/^443\/tcp/ {print $0}'

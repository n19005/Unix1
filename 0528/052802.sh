cat /etc/services | awk '$1 ~  /^http$/{print $0}'

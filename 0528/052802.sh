#cat /etc/services | awk '$1 ~  /^http$/{print $0}'
cat /etc/services | awk '/^80\/tcp/{print $0}'

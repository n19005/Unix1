#駅名
stationname=$1
curl "http://express.heartrails.com/api/json?method=getStations&line=${stationname}" 2> /dev/null | jq '.response.station[].name'

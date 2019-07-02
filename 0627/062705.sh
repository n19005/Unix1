#!/bin/bash
day=$(date --date="2019/12/31" +'%s')
now=$(date --date="now" +'%s')
echo $(((day-now)/(24 * 60 * 60)))


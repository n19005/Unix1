#!/bin/bash
#日数を計算
day=$(date --date="2019/9/1" +'%s')
now=$(date --date="2019/6/11" +'%s')
echo $(((day-now)/(24 * 60 * 60)))

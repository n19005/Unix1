#!/bin/bash

#5/7よりスクリプト実行時までの」日数を表示する
day=$(date --date="2019/5/7" +'%s')
    now=$(date +'%s')
    echo  $(((${now} - ${day})/(24 * 60 * 60)))

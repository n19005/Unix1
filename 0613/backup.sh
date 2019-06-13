#!/bin/bash
#tar コマンドでアーカイブ zで圧縮 /tmpディレクトリに作成 ホームディレクトリ直下のアーカイブから除外する(ex.cnf)を読み込む
cd /tmp
 tar czf home-`date '+%Y%m%d'`.tar.gz -X ~/ex.cnf ~/

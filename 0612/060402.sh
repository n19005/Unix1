#!/bin/bash 
if [ "$#" -eq 0 ]; then 
    #引数していされないときhelpを表示する 
    script_name=$(basename "$0") #ヒアドキュメントでheipを表示する 
cat << END 使い方：060402.sh FILEPATH FILEPATHで指定したファイルの容量を表示           FILEPATH-容量を求めるファイルのパスを指定、複数指定可 
END
exit 1
fi

for file in "$@"
do
    if [ -f "$file" ]; then
        #ファイルの容量確認
        du "$file"

    else
        #エラーメッセージ
        echo "通常のファイルではありません"
    fi
done

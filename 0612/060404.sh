#!/bin/bash 
if [ "$#" -eq 0 ]; then 
    #引数していされないときhelpを表示する 
    script_name=$(basename "$0") #ヒアドキュメントでheipを表示する 
cat << END 使い方：060404.sh DIRPATH
           DIRPATHで指定したディレクトリ下の読み取り不可ファイルの一覧表示
           DIRPATH-読み取り不可ファイルの一覧表示を行うディレクトリパスを指定 
END
exit 1
fi

if [ -d "$1" ]; then
    for file in $(find "$1" -maxdepth 1 -type f)
    do
    #読み取り不可ファイルであれば表示   
        if [ ! -r "${file}" ]; then
            echo $(basename "$file")
            #sudo ls-l "s[file]"
        fi
    done
else
    #エラーメッセージ
    echo ${1}: "ディレクトリではありません"
fi

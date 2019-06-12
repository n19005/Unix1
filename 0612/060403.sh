#!/bin/bash
if [ "$#" -eq 0 ]; then
#引数していされないときhelpを表示する
   script_name=$(basename "$0")

    #ヒアドキュメントでheipを表示する
cat << END
    使い方：060403.sh DIRPATH
    DIROATHで指定したディレクトリかの実行可能ファイルの一覧表示
    FILEPATH-実行可能ファイルの一覧表示を行うディレクトリパスを指定
END
exit 1
fi

if [ -d "$1" ]; then
    for file in $(find "$1" -maxdepth 1 -type f)
        #fileが実行可能であれば表示
    do
        if [ -x "${file}" ]; then
            #if [file];then
            echo $(basename "$file")
            #sudo ls-l "s[file]"
        fi
    done
else
    #エラーメッセージ
    echo "${1}: ディレクトリではありません"
fi

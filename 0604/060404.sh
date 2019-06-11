
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

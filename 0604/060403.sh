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

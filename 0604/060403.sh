if [ -d "$1"]; then
    for file in $(ls "$1")
        #fileが実行可能であれば表示
    do
        if [ -x "${1}/${file} ]; then
            echo "$file"
        fi
    done
else
    #エラーメッセージ
    echo "${1}: ディレクトリではありません
fi

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

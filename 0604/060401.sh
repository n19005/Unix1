if [ -f "$1" ]; then
    #ファイルの容量を求める
    du "$1"
    echo "OK"

else
    #エラーメッセージ
    echo "通常のファイルではありません"

    fi

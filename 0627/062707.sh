
    case "$select" in
        #git add -i 選択
        1)
        git add -i
        git status
        ;;
        #git commit 選択
        2)
        echo -n 'comment: '
        read comment
        git commit -m "$comment"
        git log --oneline 
        ;;
        3) git push
        ;;
        *)
        echo 'end..'
        exit
        ;;
    esac

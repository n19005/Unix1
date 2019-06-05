#! /bin/bash

function cont() {
    echo -n 'continue?(y/n)'
    read yasuno
    if [ $yasuno = 'n' ]; then
        echo 'end'...
        exit
    fi
}
cd $HOME/rep/unix1/

git status
cont
git add -i
git status
fi
 # git add/comment/pushの選択画面ここまで
cont
echo -n 'comment: '
read comment
git commit -m "$comment"
git log --oneline
cont
git push
unix1.sh
fi
# git add/coment/push

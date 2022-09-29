#! /bin/bash

scriptV1(){

for i in {0..9}
do
    touch "gitMessage$i"
    if [ $i -eq 5 ]; then
        echo "$MY_NAME: my first script" >> gitMessage5
    fi
    if [ $i -eq 7 ]; then
        echo "$BRANCH_NAME" >> gitMessage7
    fi
done
for i in {0..9}
do
    if [ -s gitMessage$i ]; then
        commitmessage="${commitmessage}$(cat gitMessage$i);"
    fi
done
for i in {0..9}
do
    rm "gitMessage$i"
done
}

scriptV2(){

touch gitMessage{0..9}
echo "$MY_NAME: my first script" >> "$(find *5)"
echo "$BRANCH_NAME" >> "$(find *7)"
commitmessage="$(grep -l "." gitMessage* | xargs cat)"
rm gitMessage{0..9}
}

echo "Starting script..."

BRANCH_NAME="$1"
cd ~/Desktop/ausy_academy_2022/sandbox/vvestemeanu
git switch -c "$BRANCH_NAME"
touch "$MY_NAME.txt"

case "$2" in
"0")
    scriptV1
;;
"1")
    scriptV2
;;
*)
    scriptV1
;;
esac

git add "$MY_NAME.txt"
git add ~/Desktop/ausy_academy_2022/Vlad/Task1_scripting/script1.sh
git commit -m "$commitmessage"
git push origin $BRANCH_NAME

echo "Done!"

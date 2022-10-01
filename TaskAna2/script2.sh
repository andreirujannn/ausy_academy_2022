 #! /bin/bash

scriptV1(){

for i in {0..9}
do
    touch "gitMessage$i"
    if [ $i -eq 5 ]; then
        echo "$MY_NAME: my first script" >> gitMessage5
    fi
    if [ $i -eq 7 ]; then
        echo "AnaMaria" >> gitMessage7
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
echo "AnaMaria" >> "$(find *7)"
commitmessage="$(grep -l "." gitMessage* | xargs cat)"
rm gitMessage{0..9}
}
AnaMaria="$1"
 cd ~/home/projectx/Desktop/ausy_academy_2022/sandbox/anamariab

git switch -c "AnaMaria"
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
git add ~/home/projectx/Desktop/ausy_academy_2022/sandbox/anamariab/TaskAna2
git commit -m "$commitmessage"
git push origin ANAScript

echo "Done!"

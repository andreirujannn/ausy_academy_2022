#! /bin/bash
#FIRT TASK!!!

#*** 1-3 ***
repoPath="/home/projectx/Desktop/gitBasics/ausy_academy_2022"
cd $repoPath
cd "sandbox"
cd "mmitu"
#pwd

#*** 4-5 ***
git branch Mitu_Script1
git switch Mitu_Script1

#*** 6 ***
touch "$MY_NAME.txt"

#*** 7-8 ***
for i in {0..9}
do
    touch gitMessage$i
    if [ $i == 5 ];then
        echo "$MY_NAME : my first script" > gitMessage$i
    fi
done

#*** 9 ***
git add $MY_NAME.txt

#*** 10 ***
for i in ./*
do
    message=$(cat $i)
    if [[ $message == *"my first script"* ]]; then
        git commit -m "$message"
        echo "Am gasit!"
        break 2;
    fi
done

#*** 11 ***
git push origin Mitu_Script1

#*** 12 ***
for i in ./*gitMessage*
do
    rm $i
done

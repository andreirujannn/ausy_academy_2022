#! /bin/bash
#FIRT TASK!!!

firstImplementation(){
#*** 1-3 ***
repoPath="/home/projectx/Desktop/gitBasics/ausy_academy_2022"
cd $repoPath
cd "sandbox"
cd "mmitu"

#*** 4-5 ***
# $1 = primul argument
newBranchName=$1
git branch $newBranchName
git switch $newBranchName

#*** 6 ***
touch "$MY_NAME.txt"

#*** 7-8 ***
for i in {0..9}
do
    touch gitMessage$i
    if [ $i == 5 ];then
        echo "$MY_NAME : my first script" > gitMessage$i
    fi
    if [ $i == 7 ];then
        echo "$newBranchName" > gitMessage$i
    fi
done

#*** 9 ***
git add $MY_NAME.txt

#*** 10 ***
for i in ./*gitMessage*
do
    if [ -s $i ];then
        message=$message$(cat $i)";"
    fi
done

if [[ $message == *"my first script"* ]]; then
        #git commit -m "$message"
        echo "$message"
fi

#*** 11 ***
git push origin Mitu_Script1

#*** 12 ***
for i in ./*gitMessage*
do
    rm $i
done
}

firstImplementation $1
#secondImplementation(){}

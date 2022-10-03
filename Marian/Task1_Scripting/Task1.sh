#! /bin/bash
#FIRT TASK!!!
#TO SWITCH BETWEEN THE IMPLEMENTATIONS USE "first" for first or "second" for second
    #eg: Task1.sh newBranchName first 

checkError(){
    if [ $? -ne 0 ];then
        echo "ERROR: $1"
        echo "Script stopped..."
        exit $?
    fi
}

#*** 1-3 ***
repoPath="/home/projectx/Desktop/gitBasics/ausy_academy_2022"
cd $repoPath
checkError "File path not found or incorrect"
cd "sandbox"
checkError "Folder sandbox not found"
cd "mmitu"
checkError "Folder mmitu not found"

#*** 4-5 ***
# $1 = primul argument
newBranchName=$1
git branch $newBranchName
#checkError "Cannot create new branch"
git switch $newBranchName
checkError "Cannot switch to branch $newBranchName"

#*** 6 ***
touch "$MY_NAME.txt"
checkError "Cannot create file $MY_NAME.txt"

firstImplementation(){
#*** 7-8 ***
for i in {0..9}
do
    touch gitMessage$i
    checkError "Cannot create file gitMessage$i"
    if [ $i == 5 ];then
        echo "$MY_NAME : my first script" > gitMessage$i
        checkError "Cannot echo into file"
    fi
    if [ $i == 7 ];then
        echo "$newBranchName" > gitMessage$i
        checkError "Cannot echo into file"
    fi
done

#*** 9 ***
git add "$MY_NAME.txt"
checkError "Cannot stage file $MY_NAME.txt"

#*** 10 ***
for i in ./*gitMessage*
do
    if [ -s $i ];then
        message=$message$(cat $i)";"
    fi
done

if [[ $message == *"my first script"* ]]; then
        git commit -m "$message"
        checkError "Cannot commit"
fi

#*** 11 ***
git push origin Mitu_Script1
checkError "Cannot push to repository"

#*** 12 ***
for i in ./*gitMessage*
do
    rm $i
done
}

secondImplementation(){
#*** 7-8 ***
touch gitMessage{0..9}
checkError "Cannot create files gitMessage0..9"
echo "$MY_NAME : my first script" > gitMessage5
checkError "Cannot echo into file gitMessage5"
echo "$newBranchName" > gitMessage7
checkError "Cannot echo into file gitMessage7"

#*** 9 ***
git add "$MY_NAME.txt"
checkError "Cannot stage file $MY_NAME.txt"

#*** 10 ***
message="$(grep -R '' *'git'*)"
#remove "gitMessage?:" from grep result
message=${message//"gitMessage"?:/}
git commit -m "$message"

#*** 11 ***
git push origin Mitu_Script1
checkError "Cannot push to repository"

#*** 12 ***

rm gitMessage?
}

if [ $2 == "first" ];then
    firstImplementation
    elif [ $2 == "second" ];then
        secondImplementation
    else
        echo "Error!"
        echo "Please use Task1.sh branchName Implemetation"
        echo "branchName = name of the new branch"
        echo "Implementation = *first* or *second* implementation"
fi
#! /bin/bash
script1(){
  
Branch="$1"

#1-3
cd ~/Desktop/ausy_academy_2022/sandbox/Luiza

#4-5
git switch -c "$Branch "
 
#6
touch "$MY_NAME.txt"

#7
for i in {0..9}
do 
#8      
  if [$i -eq 5 ];then

    echo "$MY_NAME:my first script" > gitMessage5 

  else
        touch gitMessage$i
  fi
#bonus1-2
  if [ $i -eq 7 ]; then 
        echo " $Branch"  > gitMessage7 
  fi
done

git add "$MY_NAME.txt"
git add ~/Desktop/ausy_academy_2022/Luiza/Task1/script1.sh
git commit -m "first script"

        
for i in {0..9}
do  
  if [ -s gitMessage$i ]; then 

      newcommit="${newcommit}$(cat gitMessage$i);"

  fi

done   

git commit -m"$newcommit"
git push origin $Branch

for i in {0..9}

  rm "gitMessage$i"

done
}

script2(){
#bonus 2
Branch="$1"

cd ~/Desktop/ausy_academy_2022/sandbox/Luiza
git switch -c "$Branch"
touch "$MY_NAME.txt"
touch gitMessage{0..9}
echo "$MY_NAME:my first script" > "$(find *5)"
echo "$Branch" > "$(find *7)"
git add "$MY_NAME.txt"
git add ~/Desktop/ausy_academy_2022/LuizaElena/Task1/script1.sh
newcommit="$(grep gitMessage? | xargs cat)"
git commit -m "$newcommit"
rm gitMessage?
}

case "$2" in
 "0")
     script1 "$1"
   ;;
 "1")
    script2 "$1"
   ;;
 
*)  
echo "Error"
;;
    




     
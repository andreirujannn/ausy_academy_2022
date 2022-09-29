#! /bin/bash


read -p "New branch name : " Branch 

cd ~/Desktop/ausy_academy_2022/sandbox/luiza


git switch -c "$Branch "

touch "$MY_NAME.txt"

for i in {0..10}
  do 


     if [$i -eq 5 ];then

         touch gitMessage5
       
        echo "gitMessage5"

        git commit -m "luiza_ivan:my first script"
        else
        touch gitMessage$i
    fi

    if [ $i -eq 7 ]; then 
        echo " $branch"  >>  gitMessage7 

    done

    git add "$MY_NAME.txt"
      git add ~/Desktop/ausy_academy_2022/Luiza/Task1/script1.sh
    git commit -m "first script"

         

         for i in {0..10}

         do
           if [ -z gitMessage$i ]; then 

               echo " this is an empty  file "

               exit

            fi

            done   





    for i in {0..10}

      

      rm "gitMessage$i"

      done
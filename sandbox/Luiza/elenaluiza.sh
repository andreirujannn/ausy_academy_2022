#! /bin/bash

  cd ~/Desktop/ausy_academy_2022/sandbox/luiza
git switch -c "Luiza_script"
touch "$MY_NAME.txt"

for i in {0..10}
  do 
     if [$i -eq 5 ];then
        touch gitMessage5
        echo "gitMessage5"
        git commit -m "luiza_ivan:my first script"
        else
        touch gitMessage$if
    fi

    done

    git add "$MY_NAME.txt"

    git commit -m "first script"

    for i in {0..10}
    do 
      rm "gitMessage$i"
      done
   

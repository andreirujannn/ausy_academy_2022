echo "Starting script..."
# 1-3
cd ~/home/projectx/Desktop/ausy_academy_2022/sandbox/anamariab
# 4-5
 git switch -c "Ana_Script1"
# 6
touch "$MY_NAME.txt"
# 7
for i in {1..10}
do
    touch "gitMessage$i"
    # 8
    if [ $i -eq 5 ]; then
        echo "$MY_NAME: my first script" >> gitMessage5
    fi
done
# 9
git add "$MY_NAME.txt"
# 10
commitmessage="$(grep "$MY_NAME: my first script" *)"
# 11
git commit -m "$commitmessage"
# 12
for i in {1..10}
do
    rm "gitMessage$i"
done

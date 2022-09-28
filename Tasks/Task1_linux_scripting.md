# Setup 
1. Create a new linux enviroment variable named $MY_NAME which value will be your name  
Note: $MY_NAME is not hardcoded in the script, it has to be created manually from command line by the user of the script.

# Create a script which will : 
1. Navigate in the academy repo
2. Go to the sandbox folder
3. Enter your directory (e.g. Luiza)
4. Create a new branch
5. Switch to that branch
6. Create in your repo directory a new file named $MY_NAME.txt 
7. Create in your repo directory using a for loop 10 file named gitMessage0, gitMessage1, gitMessage2 and so on
8. While creating files using an if condition in file with nr 5 type a commit message ( ex : $MY_NAME : my first script )
9. Add (stage) the file created at step 6
10. Search for file with log message ( from step 8) read the message from that file and create a new commit with your message
11. Push the commit to your branch
12. Once you pushed the file discard all other changes that where made. (from step 7)
13. Manually create a pull request
# After the script is implemented:
1. Manually commit and push the script to <ausy_academy_2022>/<your_name>/Task1_scripting/
2. Create a Pull request

# Bonus #1
1. read the new branch name from command line argument
2. write branch name to gitMessage7 
3. Instead of directly reading the commit message from gitmessage5(from step 8) go over them with a for loop and check if they are empty. If a file is not empty, add the message to the commit message. 

# Bonus #2
1. Write the same functionality without using for or if statements.
2. Add command line argument to switch between the two implementations

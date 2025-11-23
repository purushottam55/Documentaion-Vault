


C1:  
// Its the intresting as data structures.


// simple for loop in bash. 

#!/bin/bash

for n in a b c;
do
   echo $n
done


----
c2:

// Range based for loop

#!/bin/bash

for n in {1..5}; 
do
    echo $n
done


----
c3:

#!/bin/bash         
Age=17

if [ "$Age" -ge 18 ]; then
    echo "You can vote"
else
    echo "You cannot vote"    
fi

..

//If condition: Checks if Age is greater than or equal to (-ge) 18.

----
c4:

#!/bin/bash

MyName="Purushottam"
MySirname="Naykude"

echo "my name is $MyName and sirname is $MySirname"


// here you have to write sticky to = "that variable what you are defining. 

----
c5:

#!/bin/bash

var1="Apple" #global variable
myfun(){
    local var2="Banana" #local variable
    var3="Cherry" #global variable
    echo "The name of first fruit is $var1"
    echo "The name of second fruit is $var2"
}
myfun #calling function

echo "The name of first fruit is $var1"
#trying to access local variable
echo "The name of second fruit is $var2"
echo "The name of third fruit is $var3"

----
c6:

echo "Enter filename"
read filename

if [ -e $filename ]
then
echo "$filename is exits on the directory"
cat $filename

else
    cat > $filename
    echo "File created"
fi

////

// Here explaination ::=>

if [ -e $filename ]
// Checks if the file exists:

-e is a test operator that returns true if the file exists.

$filename is the variable holding the user input.

then
echo "$filename is exits on the directory"
cat $filename

-----
c7:  // refer geeks for geeks if want structured. 
If-else statement:

if-fi 
if-else-fi 
if-elif-else-fi 
nested if-else    

// See c1.

---
c8:

Name="Satyajit"
case "$Name" in
    #case 1
    "Rajib") echo "Profession : Software Engineer" ;;
    
    #case 2
    "Vikas") echo "Profession : Web Developer" ;;
    
    #case 3
    "Satyajit") echo "Profession : Technical Content Writer" ;;
esac


=> Output of case-sac statement:

Profession : Technical Content Writer

----
c9
String and Numeric Comparisons
The string comparison means in the shell scripting we can take decisions by doing comparisons within strings as well. Here is a descriptive table with all the operators -

Operator	Description
==	Returns true if the strings are equal
!=	 Returns true if the strings are not equal
-n	Returns true if the string to be tested is not null
-z	Returns true if the string to be tested is null

// Yamadhe he string sathi vaparli janari operators aahet. 

---
c10:

Arithmetic operators are used for checking the arithmetic-based conditions. Like less than, greater than, equals to, etc. Here is a descriptive table with all the operators -

Operator	Description
-eq	Equal
-ge	Greater Than or Equal
-gt	Greater Than
-le	Less Than or Equal
-lt	Less Than
-ne	Not Equal

---
c11:


Applications of Bash Scripts:
Automate Repetitive Work: Substitute scripts for manual labor in activities such as renaming files, organizing directories, or issuing alerts.
System Updates & Maintenance:  Schedule scripts to update software, remove temporary files, or monitor disk space.
Data Processing & Reporting: Scripts can install programs, configure servers, or roll out code to production.
Back Up Databases & Files: Schedule scripts to back up important data to cloud storage or external drives.
Monitor Systems & Networks: Test server health, monitor downtime, or notify you if a site crashes.
Make Custom Tools: Develop mini-apps for unique purposes (e.g., password generators, mass image converters).
Schedule Tasks using Cron: Run scripts every hour, day, or year with Bash and cron (Linux scheduler).
Manage Files & Permissions: Batch modify file permissions, search/delete big files, or clean cluttered folders.
Cross-Platform Scripting: Bash scripts are compatible with Linux, macOS, and Windows (through WSL or Git Bash).

---
c12:
Advantages of Bash Scripts:
Easy and Easy to Code: Bash scripts are coded in plain text with easy Linux commands. If you already know how to use the Linux terminal, you can easily write a bash script by putting those commands in a.sh file.
Saves Time and Effort: Rather than repeating the same command over and over, a bash script does it all for you at once. This is particularly useful for sysadmins and developers who have to work with multiple systems or environments and is also handy
Useful for Scheduling Jobs: You can automate your bash scripts to execute at a given time using tools such as cron—perfect for regular backups, log rotation, or software updates.
Running Multiple Commands: One bash script can execute multiple commands sequentially. This simplifies complex tasks such as installing a new server, deploying code, or configuring system parameters.

---
c13:
Disadvantages of Bash Scripts:
Errors Can Be Risky: If you make a small mistake in your script—like deleting the wrong folder or overwriting files—it can lead to serious problems. Bash doesn't have a "undo" button, so testing scripts carefully is verySlower Compared to Compiled Languages important.
Each Command Starts a New Process: Every shell command inside a bash script starts a new process. This uses more system resources and can slow things down, especially if the script runs hundreds of commands.
Slower Compared to Compiled Languages: Since bash is an interpreted language, scripts run slower than compiled programs (like those written in C or Java). For small tasks, it’s fine, but for performance-heavy tasks, it's not the best choice.
Compatibility Issues Across Systems: Scripts written on one Linux distribution (like Ubuntu) might not work the same way on another (like CentOS) due to different shell environments or command paths. You need to test your script on the target system to ensure smooth execution.

---
c14:

#someday #pending  (1) this note
2)
=> Isasae pahle networking me dive karana hai atleast 20 cards/concepts.
3) recursive search and regex practice. 

# notesSearch

This perl script is created for the purpose of searching keywords in a text file in the format as below and returns corresponding contents:

Date(e.g 4/25)

1. Item (keyword must be seen in this line)
contents
contents
.........

2. Item (keyword must be seen in this line)
contents
contents
.........

Date(e.g 4/26)

1. Item (keyword must be seen in this line)
contents
contents
.........

2. Item (keyword must be seen in this line)
contents
contents
.........

#The DayLog.txt is an example:

4/2

1. test script here
test1
test2
test2

2. wrong test
test21
test22
test23

4/3

1. hello world
test1
test2
test2

2. hi Michael
test31
test32
test34
test35

#Usage:

1. Enter the whole path to the file you want to search in

2. Put in the keyword

3. Results from DayLog.txt for example:

Please enter the complete path to the file to search: ./DayLog.txt


**********************************
	File Loaded!!!
**********************************


Please choose the pattern to search: test

Found Match: 

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
** RESULT: 1 **

1. test script here
test1
test2
test2

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
** RESULT: 2 **

2. wrong test
test21
test22
test23


Total match found: 2 


'y' To Continue or 'n' to Quit: n

_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 

Program Exited!


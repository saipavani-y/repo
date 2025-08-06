#!/bin/bash
echo "enter student no"
read sno
echo "enter student name"
read name
echo "enter english marks"
read a
echo "enter maths marks"
read b
echo "enter science marks"
read c
total=$((a+b+c))
average=$(echo "scale=2;$total/3" | bc)
echo "-------------------------------------"
echo "you entered following student details"
echo "------------------------------------"
echo "student number : $sno"
echo "student name: $name"
echo "English marks: $a"
echo "Maths marks: $b"
echo "Science marks: $c"
echo "total marks:$total"
echo "average of three subjects:$average"

 if [ $a -ge 35 ]&&[ $b -ge 35 ] &&[ $c -ge 35 ]
 then
     echo "promoted to next class"
 else
     echo "not promoted to next class"
 fi
echo "--------------------------------------"


#!/bin/bash
echo  "enter the table you want to print:"
read t
echo "-------------------"
for i in 1 2 3 4 5 6 7 8 9 10
do
d=`expr $t \* $i`
echo "  $t * $i = $d"
done

#!/bin/bash
echo " enter bus number"
read bno
echo "enter starting point"
read sp
echo "enter ending point"
read ep
echo "enter no of passengers"
read nop
echo "enter ticket price"
read tp
echo "enter passenger's age"
read page
totalamount=$((nop * tp))

echo "------------------------------------------------------"
echo "bus number: $bno"
echo "starting point: $sp"
echo "ending point: $ep"
echo "no of passengers: $nop"
echo "ticket price: $tp"
echo "passenger's age: $page"

if [ $page -gt 60 ]
then
    discount=$(echo "scale=2; $totalamount * 20/100" | bc)
    netamount=$(echo "scale=2; $totalamount - $discount" | bc)
    echo "discount amount: $discount"
    echo "total amount:$totalamount  "
    echo "after 20% discount net amount is:$netamount"
else 
   echo " no discount applied"
   echo "total amount : $totalamount"
fi 
echo "--------------------------------------------------------"

a=5
b=6
c=$((a+b))
if [ $c -gt 10 ]
then 
echo "i am happy."
randomNumberONE=$((RANDOM%3))
randomNumberTWO=$((RANDOM%3))
echo "$((randomNumberONE+randomNumberTWO))"

else
echo " $c "
fi
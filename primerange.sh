echo "Enter the lower limit "
read lower_limit
echo "Enter the upper limit "
read upper_limit

for (( ocounter=lower_limit; ocounter<=upper_limit; ocounter++ ))
do
   for (( icounter=2; icounter<=ocounter; icounter++ ))
   do
       if [ $(( ocounter%icounter )) -eq 0 ]
       then
           break
       fi
   done
if [ $ocounter -eq $icounter ]
then
echo $ocounter
fi
done

echo "Enter the num:" 
read num
fact=1
for (( count=1; count<=num; count++ ))
do
    fact=$(( fact * count ))
    echo $fact
done


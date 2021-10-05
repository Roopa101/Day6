echo "Enter a num:" 
read num

for (( counter=1;counter<=$((2**$num));counter++ ))
do
     echo $counter
done

echo "Enter the num :"
read num

for((count=2;count<=num;count++)); 
do
   while [ $(($num % count)) -eq 0 ];
   do
      echo $count
      num=$(( $num / count ))
  done
done
echo " "

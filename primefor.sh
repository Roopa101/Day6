echo "Enter the num "
read num
counter=0
flag=0
for (( count=2; count<num; count++ ))
do
       if [ $((  num%count )) -eq 0 ]
       then
           flag=1
           break
       fi
done
 if [ $flag -eq 0 ]
then
      echo "The num is prime "
else
     echo "The num is not prime"
fi

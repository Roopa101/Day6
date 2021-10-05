
function check_prime()
{
   count=0
   for((counter=2; counter<=num/2; counter++))
    do
     if [ $((num%counter)) -eq 0 ]
        then
          echo "Number is not prime"
          break
        else
          echo "number is prime"
          break
     fi
   done
}
echo "Enter the number "
read num
check_prime "$num"

function check_palindrom()
{
   rem=0
   rev=""
   temp=$num
   while [ $num -gt 0 ]
      do
         s=$(( $num % 10 ))
         num=$(( $num / 10 ))
         rev=$( echo ${rev}${s} )
   done
   if [ $temp -eq $rev ];
      then
         echo "Number is palindrome"
   else
       echo "Number is NOT palindrome"
   fi
}

check_palindrom "$num"


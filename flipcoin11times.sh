counter=0
limit=11
count=0
count1=0
while [ (($counter -ge 0)) && (($count -lt $limit)) && (($count1 -lt $limit)) ]
do
        coinflip=$(( RANDOM%2 ))
        if [ $coinflip -eq 0 ]
        then
                echo "Heads"
                count=$[ $count+1 ]
        else
                echo "Tails"
                count1=$[ $count1+1 ]
        fi
                 counter=$(( $counter+1 ))

done
echo "Total iterations =" $counter

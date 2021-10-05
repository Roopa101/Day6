gambler_money=100
is_bet=1

bet_times=0
bet_won=0
bet_lose=0

while [  $gambler_money -gt 0  -a  $gambler_money -lt 200  -a  $is_bet -eq 1 ]
do

        flip_coin=$((RANDOM%2))

        if [ $flip_coin -eq 0 ]
        then
                bet_won=$((bet_won+1))
        else
                gambler_money=$((gambler_money-1))
                bet_lose=$((bet_lose+1))
        fi
                bet_times=$((bet_times+1))
done

echo "Money:$gambler_money  BetTimes:$bet_times  Won:$bet_won Lose:$bet_lose"


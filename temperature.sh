function temp_conF()
{
        degF=$(((degC*9/5)+32))
        echo $degF
}

function temp_conC()
{
        degC=$(( (degF-32)*5/9 ))
        echo $degC
}

echo "Enter a temprature in celcius "
read temprature1
echo "Enter a temprature in fared "
read temprature2
echo "Enter a choice 1.fared 2.celcius "
read choice
case $choice in
      1)
        if [ $temprature1 -gt 0 -a $temprature1 -lt 100 ]
        then
        tempfared=$(temp_conF $temprature1)
        echo "temprature in fared=" $tempfared "F"
        else
        echo "invalid"
        fi
        ;;
      2)
        if [ $temprature2 -gt 32 -a $temprature2 -lt 212 ]
        then
        tempcel=$(temp_conC $temprature2)
        echo "temprature in celcius=" $tempcel "C"
        else
        echo "invalid number"
        fi
        ;;
      *)
        echo "invalid choice"
        ;;
esac


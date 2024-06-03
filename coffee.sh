echo "Hey, how much do you like coffee? (1-10)"

read coffee

if [[ $coffee -lt 9 ]]; then
    echo "Leave right now"
elif [[ $coffee -eq 9 ]]
then
    echo "You're almost nice"
else
    echo "You're awesome"
fi

echo $coffee
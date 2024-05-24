#!/bin/bash

echo "Welcome, loser. Select your starting class:
1 - Samurai
2 - Prisioner
3 - Prophet
"

read class

case $class in

	1)
		type="Samurai"
		hp=10
		attack=20
		;;
	2)
		type="Prisioner"
		hp=20
		attack=4
		;;
	3)
		type="Prophet"
		hp=10
		attack=4
		;;
esac

echo "You chose the $type class. Your HP is $hp and your attack is $attack"
#First Beast Battle

beast=$(( $RANDOM % 2 ))
echo "Your first beast approaches. Prepare to battle. Pick a number between 0 and 1. (0/1)"
read player

if [[ $player == $beast ]]; then
	echo "Beast Vanquiseh. Congrats :)"
else
	echo "You Died"
	exit 1
fi

sleep 1

# BOSS BATTLE
echo "Boss Battle. Get Ready. Pick a number between 0 and 9. (0-9)"

read player

margit=$(( $RANDOM % 10 ))

if [[ $margit == $player || $player == "coffee" ]]; then
	echo "Beast vanquished. Congrats :)"
else
	echo "You died"
fi 

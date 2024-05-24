#!/bin/bash

echo "What's your name and age?"

read name
read age

echo "Hello $name, you are $age years old"

sleep 2

time=$(($RANDOM % 15 ))
mAge=$(($time + $age))

echo "You will be a millionaire at the age of $mAge"

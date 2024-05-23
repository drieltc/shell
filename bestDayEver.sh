#!/bin/bash

name=$1
compliment=$2

user=$(whoami)
cwd=$(pwd)
date=$(date)
echo "Good Morning, $name!"
sleep 1

echo "You're looking good today, $name!"
sleep 1

echo "You have the best $compliment I've ever seen, $name!"
sleep 1

echo "You are $user and are working on $cwd. Today is $date"

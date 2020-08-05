#!/bin/bash -x

echo "Welcome To Flip Coin Combination Program"

#Use Case 1 (Flipping a Coin to Display Heads or Tails as winner)

flip_check=$((RANDOM%2))

isHeads=1

echo "Flipping Coin Value: "$flip_check

if [ $flip_check -eq $isHeads ]
then
	echo "So, Heads is Winner"
else
	echo "So, Tails is Winner"
fi

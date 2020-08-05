#!/bin/bash -x

echo "Welcome To Flip Coin Combination Program"

#Use Case 1 (Flipping a Coin to Display Heads or Tails as winner)

#flip_check=$((RANDOM%2))
#
#isHeads=1
#
#echo "Flipping Coin Value: "$flip_check
#
#if [ $flip_check -eq $isHeads ]
#then
#	echo "So, Heads is Winner"
#else
#	echo "So, Tails is Winner"
#fi





#Use Case 2 (Creating Singlet Combination in Dictionary)

echo "            "

declare -A flip_check
declare -A percent_singlet_dict

isHeads=1

for((i=1;i<=20;i++))
do
	flip_check=$((RANDOM%2))

	if [ $flip_check -eq $isHeads ]
	then
		count_heads=$((count_heads + 1))
	else
                count_tails=$((count_tails + 1))
	fi
done

flip_check[Heads]=$count_heads

flip_check[Tails]=$count_tails

echo "Heads:${flip_check[Heads]}"

echo "Tails:${flip_check[Tails]}"

echo "            "

echo "Percentage of getting Heads: "`awk "BEGIN {print ($count_heads/20)*100 }"`

echo "Percentage of getting Tails: "`awk "BEGIN {print ($count_tails/20)*100 }"`

percent_singlet_dict[Heads]=`awk "BEGIN {print ($count_heads/20)*100 }"`

percent_singlet_dict[Tails]=`awk "BEGIN {print ($count_tails/20)*100 }"`

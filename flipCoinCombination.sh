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

#echo "            "
#
#declare -A flip_check_singlet
#declare -A percent_singlet_dict
#
#isHeads=1
#
#for((i=1;i<=20;i++))
#do
#	flip_check=$((RANDOM%2))
#
#	if [ $flip_check -eq $isHeads ]
#	then
#		count_heads=$((count_heads + 1))
#	else
#                count_tails=$((count_tails + 1))
#	fi
#done
#
#flip_check_singlet[Heads]=$count_heads
#
#flip_check_singlet[Tails]=$count_tails
#
#echo "Heads:${flip_check_singlet[Heads]}"
#
#echo "Tails:${flip_check_singlet[Tails]}"
#
#echo "            "
#
#echo "Percentage of getting Heads: "`awk "BEGIN {print ($count_heads/20)*100 }"`
#
#echo "Percentage of getting Tails: "`awk "BEGIN {print ($count_tails/20)*100 }"`
#
#percent_singlet_dict[Heads]=`awk "BEGIN {print ($count_heads/20)*100 }"`
#
#percent_singlet_dict[Tails]=`awk "BEGIN {print ($count_tails/20)*100 }"`









#Use Case 3 (Creating Doublet Combination in Dictionary)

#isHeads=1
#isTails=0
#
#count_heads_heads=0
#count_heads_tails=0
#
#count_tails_heads=0
#count_tails_tails=0
#
#declare -A flip_check_doublet
#declare -A percent_duplet_dict
#
#for((i=1;i<=20;i++))
#do
#	flip_check_1=$((RANDOM%2))
#	flip_check_2=$((RANDOM%2))
#
#	if [[ $flip_check_1 -eq $isHeads && $flip_check_2 -eq $isHeads ]]
#	then
#		count_heads_heads=$((count_heads_heads + 1))
#	elif  [[ $flip_check_1 -eq $isHeads && $flip_check_2 -eq $isTails ]]
#        then
#                count_heads_tails=$((count_heads_tails + 1))
#	elif [[ $flip_check_1 -eq $isTails && $flip_check_2 -eq $isHeads ]]
#        then
#                count_tails_heads=$((count_tails_heads + 1))
#	else
#                count_tails_tails=$((count_tails_tails + 1))
#	fi
#done
#
#flip_check_doublet[Heads Heads]=$count_heads_heads
#
#flip_check_doublet[Heads Tails]=$count_heads_tails
#
#flip_check_doublet[Tails Heads]=$count_tails_heads
#
#flip_check_doublet[Tails Tails]=$count_tails_tails
#
#echo "            "
#
#for i in "${!flip_check_doublet[@]}"
#do
#	echo "$i:${flip_check_doublet[$i]}"
#done
#
#echo "            "
#
#echo "Percentage of getting Heads Heads: "`awk "BEGIN {print ($count_heads_heads/20)*100 }"`
#
#echo "Percentage of getting Heads Tails: "`awk "BEGIN {print ($count_heads_tails/20)*100 }"`
#
#echo "Percentage of getting Tails Heads: "`awk "BEGIN {print ($count_tails_heads/20)*100 }"`
#
#echo "Percentage of getting Tails Tails: "`awk "BEGIN {print ($count_tails_tails/20)*100 }"`
#
#percent_duplet_dict[Heads Heads]=`awk "BEGIN {print ($count_heads_heads/20)*100 }"`
#percent_duplet_dict[Heads Tails]=`awk "BEGIN {print ($count_heads_tails/20)*100 }"`
#percent_duplet_dict[Tails Heads]=`awk "BEGIN {print ($count_tails_heads/20)*100 }"`
#percent_duplet_dict[Tails Tails]=`awk "BEGIN {print ($count_tails_tails/20)*100 }"`









#Use Case 4 (Creating Triplet Combination in Dictionary)

isHeads=1
isTails=0

count_heads_heads_heads=0
count_heads_heads_tails=0

count_heads_tails_heads=0
count_heads_tails_tails=0

count_tails_heads_heads=0
count_tails_heads_tails=0

count_tails_tails_heads=0
count_tails_tails_tails=0

declare -A flip_check_triplet
declare -A percent_triplet_dict

for((i=1;i<=20;i++))
do
       flip_check_1=$((RANDOM%2))
       flip_check_2=$((RANDOM%2))
       flip_check_3=$((RANDOM%2))

       	if [[ $flip_check_1 -eq $isHeads && $flip_check_2 -eq $isHeads && $flip_check_3 -eq $isHeads ]]
       	then
               count_heads_heads_heads=$((count_heads_heads_heads + 1))
	elif [[ $flip_check_1 -eq $isHeads && $flip_check_2 -eq $isHeads && $flip_check_3 -eq $isTails ]]
       	then
               count_heads_heads_tails=$((count_heads_heads_tails + 1))
       	elif [[ $flip_check_1 -eq $isHeads && $flip_check_2 -eq $isTails && $flip_check_3 -eq $isHeads ]]
        then
                count_heads_tails_heads=$((count_heads_tails_heads + 1))
	elif [[ $flip_check_1 -eq $isHeads && $flip_check_2 -eq $isTails && $flip_check_3 -eq $isTails ]]
        then
                count_heads_tails_tails=$((count_heads_tails_tails + 1))
	elif [[ $flip_check_1 -eq $isTails && $flip_check_2 -eq $isHeads && $flip_check_3 -eq $isHeads ]]
        then
                count_tails_heads_heads=$((count_tails_heads_heads + 1))
	elif [[ $flip_check_1 -eq $isTails && $flip_check_2 -eq $isHeads && $flip_check_3 -eq $isTails ]]
        then
                count_tails_heads_tails=$((count_tails_heads_tails + 1))
	elif [[ $flip_check_1 -eq $isTails && $flip_check_2 -eq $isTails && $flip_check_3 -eq $isHeads ]]
        then
                count_tails_tails_heads=$((count_tails_tails_heads + 1))
       	else
        	count_tails_tails_tails=$((count_tails_tails_tails + 1))
       	fi
done

flip_check_triplet[Heads Heads Heads]=$count_heads_heads_heads

flip_check_triplet[Heads Heads Tails]=$count_heads_heads_tails

flip_check_triplet[Heads Tails Heads]=$count_heads_tails_heads

flip_check_triplet[Heads Tails Tails]=$count_heads_tails_tails

flip_check_triplet[Tails Heads Heads]=$count_tails_heads_heads

flip_check_triplet[Tails Heads Tails]=$count_tails_heads_tails

flip_check_triplet[Tails Tails Heads]=$count_tails_tails_heads

flip_check_triplet[Tails Tails Tails]=$count_tails_tails_tails


for i in "${!flip_check_triplet[@]}"
do
	echo "$i:${flip_check_triplet[$i]}"
done

echo "              "

echo "Percentage of getting Heads Heads Heads: "`awk "BEGIN {print ($count_heads_heads_heads/20)*100 }"`

echo "Percentage of getting Heads Heads Tails: "`awk "BEGIN {print ($count_heads_heads_tails/20)*100 }"`

echo "Percentage of getting Heads Tails Heads: "`awk "BEGIN {print ($count_heads_tails_heads/20)*100 }"`

echo "Percentage of getting Heads Tails Tails: "`awk "BEGIN {print ($count_heads_tails_tails/20)*100 }"`

echo "Percentage of getting Tails Heads Heads: "`awk "BEGIN {print ($count_tails_heads_heads/20)*100 }"`

echo "Percentage of getting Tails Heads Tails: "`awk "BEGIN {print ($count_tails_heads_tails/20)*100 }"`

echo "Percentage of getting Tails Tails Heads: "`awk "BEGIN {print ($count_tails_tails_heads/20)*100 }"`

echo "Percentage of getting Tails Tails Tails: "`awk "BEGIN {print ($count_tails_tails_tails/20)*100 }"`



percent_triplet_dict[Heads Heads Heads]=`awk "BEGIN {print ($count_heads_heads_heads/20)*100 }"`
percent_triplet_dict[Heads Heads Tails]=`awk "BEGIN {print ($count_heads_heads_tails/20)*100 }"`
percent_triplet_dict[Heads Tails Heads]=`awk "BEGIN {print ($count_heads_tails_heads/20)*100 }"`
percent_triplet_dict[Heads Tails Tails]=`awk "BEGIN {print ($count_heads_tails_tails/20)*100 }"`
percent_triplet_dict[Tails Heads Heads]=`awk "BEGIN {print ($count_tails_heads_heads/20)*100 }"`
percent_triplet_dict[Tails Heads Tails]=`awk "BEGIN {print ($count_tails_heads_tails/20)*100 }"`
percent_triplet_dict[Tails Tails Heads]=`awk "BEGIN {print ($count_tails_tails_heads/20)*100 }"`
percent_triplet_dict[Tails Tails Tails]=`awk "BEGIN {print ($count_tails_tails_tails/20)*100 }"`

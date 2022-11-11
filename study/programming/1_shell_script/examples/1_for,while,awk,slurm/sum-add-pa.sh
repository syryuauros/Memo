#!/bin/sh

for ((j=1; j<=$3; j++));
do
	sbatch -o add"$j".out --ntasks-per-node=1 sum-add.sh $(($2 * ($j - 1) / $3 + 1)) $(($2 * $j / $3))
done

sleep 1

while [ -n "$(squeue | grep pylon)" ]
do
	sleep 1
done
	sum=0

	for ((k=1; k<=$3; k++));
	do
		sum=$((sum + $(cat ./add"$k".out)))
		rm ./add"$k".out
	done	
	
	echo $sum


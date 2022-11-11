#!/bin/sh

sbatch -o add1.out --nodelist=pylon1 sum-add.sh $(($1)) $(($2 / 3))
sbatch -o add2.out --nodelist=pylon2 sum-add.sh $(($2 / 3 + 1)) $(($2 * 2 / 3)) 
sbatch -o add3.out --nodelist=pylon3 sum-add.sh $(($2 * 2 / 3 + 1)) $(($2))
sleep 1
while [ -n "$(squeue | grep pylon)" ]
do
	sleep 1
done
	#awk '{sum +=$1} END {print sum}' add.out
	echo $(($(cat ./add1.out) + $(cat ./add2.out) + $(cat ./add3.out)))


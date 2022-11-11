#!/bin/sh

for ((i=1; i<=($3 - 1); i++));
do
sbatch /mnt/nfs1/sac.sh $(($2 * ($i - 1) / $3 + 1 )) $(($2 * $i / $3)) &
done
sbatch /mnt/nfs1/sac.sh $(($2 * ($3 - 1) / $3 + 1 )) $(($2 * $3 / $3)) 

sleep 1
while [ -n "$(squeue | grep pylon)" ]
do
	sleep 1
done

awk '{sum +=$1} END {print sum}' add.out
#bat /mnt/nfs1/add.out

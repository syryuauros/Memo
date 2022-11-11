#!/bin/sh

sbatch /mnt/nfs1/sac.sh $(($1)) $(($2 * 1 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (2 - 1) / $3 + 1 )) $(($2 * 2 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (3 - 1) / $3 + 1 )) $(($2 * 3 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (4 - 1) / $3 + 1 )) $(($2 * 4 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (5 - 1) / $3 + 1 )) $(($2 * 5 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (6 - 1) / $3 + 1 )) $(($2 * 6 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (7 - 1) / $3 + 1 )) $(($2 * 7 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (8 - 1) / $3 + 1 )) $(($2 * 8 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (9 - 1) / $3 + 1 )) $(($2 * 9 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (10 - 1) / $3 + 1 )) $(($2 * 10 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (11 - 1) / $3 + 1 )) $(($2 * 11 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (12 - 1) / $3 + 1 )) $(($2 * 12 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (13 - 1) / $3 + 1 )) $(($2 * 13 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (14 - 1) / $3 + 1 )) $(($2 * 14 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (15 - 1) / $3 + 1 )) $(($2 * 15 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (16 - 1) / $3 + 1 )) $(($2 * 16 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (17 - 1) / $3 + 1 )) $(($2 * 17 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (18 - 1) / $3 + 1 )) $(($2 * 18 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (19 - 1) / $3 + 1 )) $(($2 * 19 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (20 - 1) / $3 + 1 )) $(($2 * 20 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (21 - 1) / $3 + 1 )) $(($2 * 21 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (22 - 1) / $3 + 1 )) $(($2 * 22 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (23 - 1) / $3 + 1 )) $(($2 * 23 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (24 - 1) / $3 + 1 )) $(($2 * 24 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (25 - 1) / $3 + 1 )) $(($2 * 25 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (26 - 1) / $3 + 1 )) $(($2 * 26 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (27 - 1) / $3 + 1 )) $(($2 * 27 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (28 - 1) / $3 + 1 )) $(($2 * 28 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (29 - 1) / $3 + 1 )) $(($2 * 29 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (30 - 1) / $3 + 1 )) $(($2 * 30 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (31 - 1) / $3 + 1 )) $(($2 * 31 / $3)) &
sbatch /mnt/nfs1/sac.sh $(($2 * (32 - 1) / $3 + 1 )) $(($2 * 32 / $3)) 

sleep 1
while [ -n "$(squeue | grep pylon)" ]
do
	sleep 1
done

awk '{sum +=$1} END {print sum}' add.out
#bat /mnt/nfs1/add.out

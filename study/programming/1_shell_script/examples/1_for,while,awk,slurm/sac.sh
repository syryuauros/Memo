#!/bin/sh
#SBATCH --ntasks-per-node=1

echo -e $(/mnt/nfs1/sum-add.sh $(($1)) $(($2))) >> add.out

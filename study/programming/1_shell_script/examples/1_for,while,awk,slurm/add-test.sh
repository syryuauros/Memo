#!/bin/sh

#SBATCH -J add1
#SBATCH -o add1.out
#SBATCH --nodelist=pylon1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
/mnt/nfs1/sum-add1.sh


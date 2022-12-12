#!/bin/sh
#SBATCH --ntasks-per-node=1

echo -e $(/auros/home/solma/test/Fsum ${ARG1} ${ARG2}) >> /auros/home/solma/test/add${ARG3}.out
echo ${ARG1}
echo ${ARG2}
echo ${ARG3}

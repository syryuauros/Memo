#!/bin/sh
#SBATCH --ntasks-per-node=1

echo -e $(/mnt/nfs1/sum-add.sh $(($1)) $(($2))) >> add.out  # echo -e [data or file] >> [file] ----- 기존 내용 지우고 덮어쓰기
#                                                             echo -e [data or file] > [file] ----- 기존 내용에 추가하기

#!/bin/sh

for ((i=1; i<=($3 - 1); i++));
do
qsub -v ARG1=$(($2 * ($i - 1) / $3 +1 )),ARG2=$(($2 * $i / $3)),ARG3=$i -l nodes=node0$(($i % 5 + 1)):ppn=1 -k n /auros/home/solma/test/Fsac-fp.sh
done
qsub -v ARG1=$(($2 * ($3 - 1) / $3 +1 )),ARG2=$(($2 * $3 / $3)),ARG3=$3 -k n /auros/home/solma/test/Fsac-fp.sh

sleep 0.1
while [ -n "$(qstat -r | grep workq)" ]
do
        sleep 1
done

sleep 0

sums=0
for ((j=1; j<=($3); j++));
do
 sums=$(bc <<EOF
 scale=6
 $sums + $(cat /auros/home/solma/test/add"$j".out)
EOF
)
 #sums=$(($sums + $(cat /auros/home/solma/test/add"$j".out)))
done
echo $sums

#bat /mnt/nfs1/add.out
#sinfo
#if node is down, then >>  $ scontrol update NodeName=pylon[1-3] State=resume
#squeue
#scancel {3811..3829}
#scancel 3811 3812
# bash 부동소수점 계산 https://m31phy.tistory.com/203

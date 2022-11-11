#!/bin/sh

tmux new-session -d -s foo
tmux selectw -t foo:0

tmux splitw -v -p 40
tmux splitw -h -p 67
tmux splitw -h -p 50

tmux send-keys "ssh solma@192.168.0.103" C-m
tmux send-keys "sudo su" C-m
tmux send-keys "mount -t nfs 192.168.0.100:/export/nfs1 /mnt/nfs1" C-m
tmux send-keys "cd /mnt/nfs1" C-m
tmux send-keys "clear" C-m
tmux send-keys "ls" C-m

tmux selectp -L
tmux send-keys "ssh solma@192.168.0.102" C-m
tmux send-keys "sudo su" C-m
tmux send-keys "mount -t nfs 192.168.0.100:/export/nfs1 /mnt/nfs1" C-m
tmux send-keys "cd /mnt/nfs1" C-m
tmux send-keys "clear" C-m
tmux send-keys "ls" C-m

tmux selectp -L
tmux send-keys "ssh solma@192.168.0.101" C-m
tmux send-keys "sudo su" C-m
tmux send-keys "mount -t nfs 192.168.0.100:/export/nfs1 /mnt/nfs1" C-m
tmux send-keys "cd /mnt/nfs1" C-m
tmux send-keys "clear" C-m
tmux send-keys "ls" C-m

tmux selectp -U
tmux send-keys "systemctl restart slurmctld.service" C-m
tmux send-keys "systemctl status slurmctld.service" C-m

tmux selectp -D
tmux send-keys "systemctl restart slurmd.service" C-m
tmux send-keys "systemctl status slurmd.service" C-m
tmux send-keys ":q" C-m

tmux selectp -L
tmux send-keys "systemctl restart slurmd.service" C-m
tmux send-keys "systemctl status slurmd.service" C-m
tmux send-keys ":q" C-m

tmux selectp -L
tmux send-keys "systemctl restart slurmd.service" C-m
tmux send-keys "systemctl status slurmd.service" C-m
tmux send-keys ":q" C-m

tmux selectp -U
tmux -2 attach-session -t foo




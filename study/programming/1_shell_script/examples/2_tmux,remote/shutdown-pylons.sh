#!/bin/sh

tmux selectp -D
tmux send-keys "shutdown now" C-m

tmux selectp -R
tmux send-keys "shutdown now" C-m

tmux selectp -R
tmux send-keys "shutdown now" C-m

tmux selectp -U

tmux kill-session

tmux -2 attach-session -t foo




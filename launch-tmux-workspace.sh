#!/bin/bash

WORKSPACE="workspace"
WORKDIR=/home/josh/workspace

tmux new -d -s $WORKSPACE

tmux send-keys -t $WORKSPACE:0 'vim' Enter
tmux new-window -a -c $WORKDIR -t $WORKSPACE
tmux new-window -a -n "lab" -c $WORKDIR -t $WORKSPACE
tmux split-window -c $WORKDIR -h 
tmux split-window -c $WORKDIR -v 

tmux select-window -t $WORKSPACE:0
tmux -2 attach-session -t $WORKSPACE

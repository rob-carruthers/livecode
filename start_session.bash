#!/usr/bin/env bash

nohup sclang -D startup/startup.scd > sclang.log 2>&1 &

tmux split-window -b
tmux select-pane -D
tmux send-keys "source .venv/bin/activate"
tmux send-keys Enter
tmux send-keys "ipython -i startup/startup.py; killall sclang; killall scsynth; pkill -f \"tail -f sclang.log\"; exit"
tmux send-keys Enter
tmux split-pane -h
tmux send-keys "tail -f sclang.log; exit"
tmux send-keys Enter
tmux select-pane -L
tmux select-pane -U
tmux resize-pane -D 20
tmux send-keys "source .venv/bin/activate"
tmux send-keys Enter

if [ $# -eq 1 ]; then
  tmux send-keys "hx "
  tmux send-keys "$1; pkill -f \"ipython -i startup/startup.py\""
  tmux send-keys Enter
fi

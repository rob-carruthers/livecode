#!/usr/bin/env bash

tmux load-buffer -
tmux select-pane -D
tmux paste-buffer
tmux send-keys Enter
tmux select-pane -U

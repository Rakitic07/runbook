#!/bin/bash
# start bridge and broker in tmux
cd src/bridge
tmux new -s 'bridge' -d 'python bridge.py config/config.yml.default'
tmux split-window -v 'python broker.py config/config.yml.default'
tmux split-window -v 'python actioner.py config/config.yml.default'
tmux attach -t 'bridge'

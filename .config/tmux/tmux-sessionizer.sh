#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
    selected=$1
else
	$(find ~/projects -mindepth 2 -maxdepth 2 -type d > ~/.config/tmux/tmux-sessionizer-project-directories)
	selected=$(cat ~/.config/tmux/tmux-sessionizer-directories ~/.config/tmux/tmux-sessionizer-project-directories | fzf)
fi

if [[ -z $selected ]]; then
    exit 0
fi

selected_name=$(basename "$selected" | tr . _)
tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s $selected_name -c $selected
    exit 0
fi

if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux new-session -ds $selected_name -c $selected
fi

if [[ -z $TMUX ]]; then
	tmux attach -t $selected_name
	exit 0
fi

tmux switch-client -t $selected_name

docker compose exec terraria tmux send-keys -t server "exit" C-m  # terraria exit
docker compose exec terraria tmux send-keys -t server "exit" C-m  # bash exit
docker compose exec terraria tmux attach -t server     # wait until done
docker compose stop terraria

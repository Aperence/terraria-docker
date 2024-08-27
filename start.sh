mkdir logs 2> /dev/null || true
mkdir worlds 2> /dev/null|| true

docker compose up -d
echo "Server started !"
echo "To know the state of the server, you can check logs/server.txt, and logs/logs"
echo "Worlds are saved in the worlds folder"

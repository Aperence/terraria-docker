# Terraria server on Docker

This repository contains a docker-compose that allows to
run a Terraria server on your computer. This can be done in 3 steps:

1) Edit the config file to fit your needs. A description of each option can be found on [the wiki](https://terraria.fandom.com/wiki/Server)
2) Launch the container using `./start.sh`
3) Enjoy !

To stop the server, simply run `./stop.sh`.

You can also run commands on the server using the `connect.sh` utility script. This script will connect your terminal to the server, and you'll be able to type in commands. To then close the connection, simply use `CTRL+B D`. You can also then check the outputs in the [`logs/server.txt`](./logs/server.txt) file, which contain the trace of the server. Worlds are saved in the [./worlds folder](./worlds/) every minute by default.

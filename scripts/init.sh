if [ ! -d ${version} ]; then
    curl -O https://terraria.org/api/download/pc-dedicated-server/terraria-server-${version}.zip 2> /dev/null
    unzip terraria-server-${version}.zip > /dev/null
fi

cp /home/serverconfig.txt ${version}/Linux

cd ${version}/Linux

chmod +x TerrariaServer.bin.x86_64

echo -n "" > /logs/server.txt
chmod 666 logs/server.txt

tmux new-session -d -s server "./TerrariaServer.bin.x86_64 -config serverconfig.txt | tee /logs/server.txt"

echo -n "" > /logs/logs

(crontab -l 2> /dev/null ; echo "*/$save_delay * * * * sh /home/save.sh") | sort - | uniq - | crontab -

echo "Server ready ! Check logs/server.txt for information about the state of the server"
crond -f

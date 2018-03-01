#!/bin/bash

curl "https://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar" -o /data/minecraft_server.jar
echo "eula=true" > /data/eula.txt
cd /data/; java -Xmx2G -jar minecraft_server.jar nogui
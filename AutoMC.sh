#!/bin/bash
clear

echo "
  _____                             ___              __  _   
 |_   _|___  _ _  _ __  _  _ __ __ / __| _ _  __ _  / _|| |_ 
   | | / -_)| '_|| '  \| || |\ \ /| (__ | '_|/ _' ||  _||  _|
   |_| \___||_|  |_|_|_|\_,_|/_\_\ \___||_|  \__,_||_|   \__|                                                                                                                                       
"

echo "
This Script will install:
1. Java 21
2. Fabric 1.21.5
3. Fabric Mods For Performance"

echo "Checking for Java installation..."
if command -v java &> /dev/null; then
    echo "Java is already installed. Skipping Java installation."
else
    echo "Java is not installed. Installing Java 21..."
    apt update && apt install openjdk-21 -y
fi

mkdir -p ~/TermuxCraft && cd ~/TermuxCraft
echo "Directory ~/TermuxCraft created and changed to it."

echo "Downloading Fabric installer..."
curl -o -s fabric.jar https://meta.fabricmc.net/v2/versions/loader/1.21.5/0.16.13/1.0.3/server/jar

echo "Running Fabric installer..."
java -Xms256M -Xmx256M -jar fabric.jar --nogui

echo "Downloading performance Mods/Options..."
curl -O -L -s https://github.com/fortniteking231/TermuxCraft/raw/refs/heads/main/FPS.zip
unzip -o FPS.zip
echo "Mods downloaded, unzipped, and replaced existing files."

echo "Installation complete! You can now run your Minecraft server with:"
sleep 1

echo "java -Xms512M -Xmx512M --add-modules=jdk.incubator.vector -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -jar fabric.jar --nogui" > startMC.sh
chmod +x startMC.sh

echo "
  ___    ___   _  _  ___  _ 
 |   \  / _ \ | \| || __|| |
 | |) || (_) || .' || _| |_|
 |___/  \___/ |_|\_||___|(_)                        
"
echo Run startMC.sh to start the server

#!/bin/sh

echo "📦 Downloading PaperMC 1.21.1 Build 39..."
curl -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/39/downloads/paper-1.21.1-39.jar

echo "✅ Accepted EULA"
echo "eula=true" > eula.txt

echo "🚀 Starting Minecraft Server..."
java -Xmx1024M -Xms1024M -jar paper.jar nogui

#!/bin/sh
echo "Downloading PaperMC..."
curl -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.20.1/builds/123/downloads/paper-1.20.1-123.jar
java -Xmx1024M -Xms1024M -jar paper.jar nogui
# Trigger rebuild
git add .
git commit -m "Trigger rebuild"
git push

xvfb-run --auto-servernum --server-args='-screen 0 640x480x24:32' \
wine64 /root/vRising/VRisingServer.exe \
-persistentDataPath /root/save-data \
-serverName "tomorrow" \
-saveName "tomorrow" \
-logFile /root/save-data/logs/VRisingServer.log
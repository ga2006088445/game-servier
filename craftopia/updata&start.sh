#!/bin/bash

/root/steamcmd/steamcmd.sh +force_install_dir "/root/craftopia_server" +login anonymous +app_update 1670340 validate +quit

byobu new-session -s "craftopia" "/root/craftopia_server/Craftopia.x86_64"
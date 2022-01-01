#!/bin/bash

/root/steamcmd/steamcmd.sh +force_install_dir "/root/ark_server" +login anonymous +app_update 376030 validate +quit

byobu new-session -s "/root/ark_server/ShooterGameServer TheIsland?listen -culture=zh-TW"
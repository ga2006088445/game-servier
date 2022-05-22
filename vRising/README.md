# Docker 中的 SteamCMD 針對 Unraid 進行了優化
此 Docker 將下載並安裝 SteamCMD。 它還將安裝 V Rising 並運行它。

**保存文件：** 保存文件位於：.../vrising/save-data/Saves
**配置文件：** 配置文件位於：.../vrising/save-data/Settings

**注意：** 首次啟動可能需要很長時間，因為它會下載遊戲服務器文件！

**更新通知：**如果有更新的遊戲版本，只需重新啟動容器即可。

## Example Env params
| Name | Value | Example |
| --- | --- | --- |
| STEAMCMD_DIR | Folder for SteamCMD | /serverdata/steamcmd |
| SERVER_DIR | Folder for gamefile | /serverdata/serverfiles |
| GAME_ID | The GAME_ID that the container downloads at startup. If you want to install a static or beta version of the game change the value to: '1829350 -beta YOURBRANCH' (without quotes, replace YOURBRANCH with the branch or version you want to install). | 1829350 |
| SERVER_NAME | Enter your preferred server name. | V Rising Docker |
| WORLD_NAME | Enter your prefered world name. | world1 |
| GAME_PARAMS | Enter additional game startup parameters if needed, otherwise leave empty. | empty |
| UID | User Identifier | 99 |
| GID | Group Identifier | 100 |
| GAME_PORT | Port the server will be running on | 27015 |
| VALIDATE | Validates the game data | true |
| USERNAME | Leave blank for anonymous login | blank |
| PASSWRD | Leave blank for anonymous login | blank |

## Run example
```
docker run --name V-Rising -d \
	-p 9876-9877:9876-9877/udp \
	--env 'GAME_ID=1829350' \
	--env 'SERVER_NAME=V Rising Docker' \
	--env 'WORLD_NAME=tomorrow' \
	--env 'UID=99' \
	--env 'GID=100' \
	--volume /path/to/steamcmd:/serverdata/steamcmd \
	--volume /path/to/vrising:/serverdata/serverfiles \
	.
```
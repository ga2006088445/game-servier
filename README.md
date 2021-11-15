# 世界檔案

PS:.是專案位置

cd ./data

sudo wget 'https://drive.google.com/xxxxxxxxxxxxx' -O data.ZIP

sudo apt install unzip

sudo unzip data.ZIP

sudo mv Cluster_1/ MyDediServer

sudo chmod 777 -R ./data

# 更正token
vim ~/.klei/DoNotStarveTogether/MyDediServer/cluster_token.txt

PS: DST 的 KEY 去申請 忘記哪邊了

# 房間設定
vim ~/.klei/DoNotStarveTogether/MyDediServer/cluster.ini

PS: master_port = 10889

PS: cluster_key = supersecretkey

DEL: offline_cluster = false

DEL: cluster_language = zht

# 管理員權限
cp adminlist.txt ~/.klei/DoNotStarveTogether/MyDediServer/



# 啟動
docker-compose up

# 世界檔案
cd ~/.klei/DoNotStarveTogether/

wget 'https://drive.google.com/u/0/uc?id=1kgN4E8xI2SjoRYbGyogYbDEwsCypfzfa&export=download' -O data.ZIP

sudo wget 'https://drive.google.com/u/0/uc?id=1kgN4E8xI2SjoRYbGyogYbDEwsCypfzfa&export=download' -O data.ZIP

sudo apt install unzip

sudo unzip data.ZIP

sudo mv Cluster_1/ MyDediServer

cd ~

sudo chmod 777 -R .klei/

# 更正token
vim ~/.klei/DoNotStarveTogether/MyDediServer/cluster_token.txt

PS: pds-g^KU_cPYKIG9M^hhDr+9QtjBMlub0fciH8BRNLRm6F5iqoA5vnPv1k1BY=

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

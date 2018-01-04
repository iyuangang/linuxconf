docker image ls
docker run -it iyuangang/mysql:v1.1 /bin/bash
docker ps -l
docker ps -a
docker commit iyuangang/mysql:v1.1
docker attach 80d


例子

```
docker swarm init
docker swarm join-token worker
docker swarm join-token manager
```
```
docker network create --driver overlay mynet
docker network ls
```
```
curl -w "/n" 'https://discovery.etcd.io/new?size=1'
会返回url

docker service create \
--name etcd \
--replicas 1 \
--network mynet \
-p 2379:2379 \
-p 2380:2380 \
-p 4001:4001 \
-p 7001:7001 \
elcolio/etcd:latest \
-name etcd \
-discovery=https://discovery.etcd.io/上面的url
```
```
docker service create \
--name mysql-galera \
--replicas 3 \
-p 3306:3306 \
--network mynet \
--env MYSQL_ROOT_PASSWORD=mypassword \
--env DISCOVERY_SERVICE=etcd:2379 \
--env XTRABACKUP_PASSWORD=mypassword \
--env CLUSTER_NAME=galera \
perconalab/percona-xtradb-cluster
```
```
docker service create \
--name wordpress \
--replicas 2 \
-p 80:80 \
--network mynet \
--env WORDPRESS_DB_HOST=mysql-galera \
--env WORDPRESS_DB_USER=root \
--env WORDPRESS_DB_PASSWORD=mypassword \
wordpress
```

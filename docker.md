![avatar](https://raw.githubusercontent.com/iyuangang/linuxconf/master/lALPBbCc1UqbvejNAx3NBLc_1207_797.png)
这几天aliyun 的docker 镜像加速坏了，速度特别慢。按下面的例子，等待镜像下载完毕是可以正常运行的。

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
-discovery=https://discovery.etcd.io/上面的url注意不要复制到`/n`
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

```
docker ps
docker exec -it balbabaal /bin/bash
# apt-get install iproute iputils-ping
# ip a
# ping etcd
PING etcd (10.0.0.2) 56(84) bytes of data.
64 bytes from 10.0.0.2 (10.0.0.2): icmp_seq=1 ttl=64 time=0.041 ms
64 bytes from 10.0.0.2 (10.0.0.2): icmp_seq=2 ttl=64 time=0.057 ms
64 bytes from 10.0.0.2 (10.0.0.2): icmp_seq=3 ttl=64 time=0.059 ms
^C
--- etcd ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2028ms
rtt min/avg/max/mdev = 0.041/0.052/0.059/0.010 ms

# ping mysql-galera
PING mysql-galera (10.0.0.4) 56(84) bytes of data.
64 bytes from 10.0.0.4 (10.0.0.4): icmp_seq=1 ttl=64 time=0.024 ms
64 bytes from 10.0.0.4 (10.0.0.4): icmp_seq=2 ttl=64 time=0.063 ms
64 bytes from 10.0.0.4 (10.0.0.4): icmp_seq=3 ttl=64 time=0.074 ms
^C
--- mysql-galera ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2004ms
rtt min/avg/max/mdev = 0.024/0.053/0.074/0.023 ms

```

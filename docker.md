docker image ls
docker run -it iyuangang/mysql:v1.1 /bin/bash
docker ps -l
docker ps -a
docker commit iyuangang/mysql:v1.1
docker attach 80d


```
docker service create /
--name mysql-galera /
--replicas 3 /
-p 3306:3306 /
--network mynet /
--env MYSQL_ROOT_PASSWORD=mypassword /
--env DISCOVERY_SERVICE=10.0.0.2:2379 /
--env XTRABACKUP_PASSWORD=mypassword /
--env CLUSTER_NAME=galera /
perconalab/percona-xtradb-cluster:5.6
```

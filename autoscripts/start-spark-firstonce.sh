#!/bin/bash

cd ../spark_compose
docker-compose up -d

docker exec -ti `docker ps | grep "spark-master" | awk '{print $1}'` bash -c "sudo chown hadoop:hadoop  /home/hadoop/spark_datas;sudo chown hadoop:hadoop  /home/hadoop/hadoop_datas;"

cd ../autoscripts
./initial_spark_all.sh

./start_all_in_order.sh

docker exec -ti `docker ps | grep "spark-master" | awk '{print $1}'` bash -c "mkdir -p /home/hadoop/spark_datas/spark_events;mkdir -p /home/hadoop/spark_datas/spark_history;"

#hive-hadoop
#docker exec -ti `docker ps | grep "spark-master" | awk '{print $1}'`  bash -c " hadoop fs  -mkdir -p /usr/hive/warehouse && hadoop fs  -mkdir -p /usr/hive/tmp &&hadoop fs  -mkdir -p /usr/hive/log && hadoop fs  -chmod 777 /usr/hive/warehouse && hadoop fs  -chmod 777 /usr/hive/tmp && hadoop fs  -chmod 777 /usr/hive/log"
#
#docker exec -ti `docker ps | grep "spark-master" | awk '{print $1}'`  bash -c " sudo /etc/init.d/mysql start"
#
#docker exec -ti `docker ps | grep "spark-master" | awk '{print $1}'`  bash -c "cd /usr/local/hive/bin && ./schematool --dbType mysql --initSchema"
#
#docker exec `docker ps | grep "spark-master" | awk '{print $1}'`  bash -c "nohup /usr/local/hive/bin/hive --service metastore 2>&1 >> /usr/local/hive/logs/log.log &"
#
#docker exec `docker ps | grep "spark-master" | awk '{print $1}'`  bash -c "source ~/.bashrc;cp ${SPARK_HOME}/jars/{scala-library,spark-core,spark-network-common}* ${HIVE_HOME}/lib"
docker exec -it `docker ps | grep "spark-master" | awk '{print $1}'`  bash -c "source /home/hadoop/initial_hive.sh"
docker exec -it spark-master bash
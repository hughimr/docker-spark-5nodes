#!/bin/bash
# stop hadoop at last 
docker exec -ti `sudo docker ps | grep "spark-master" | awk '{print $1}'` bash -c "/usr/local/spark-2.0.0-bin-hadoop2-without-hive/sbin/stop-all.sh"
echo "==================================="
echo "Spark stoped !!!"
echo "==================================="

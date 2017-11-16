#!/bin/bash
# start hadoop first
docker exec -ti `sudo docker ps | grep "spark-master" | awk '{print $1}'` bash -c "/usr/local/spark-2.0.0-bin-hadoop2-without-hive/sbin/start-all.sh;/usr/local/spark-2.0.0-bin-hadoop2-without-hive/sbin/start-history-server.sh"

echo "=========================================================================="

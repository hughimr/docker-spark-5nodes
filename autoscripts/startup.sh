#!/bin/bash

docker pull  hughntes/spark-master:0.1
docker pull hughntes/spark-slave:0.1

./start-spark-firstonce.sh
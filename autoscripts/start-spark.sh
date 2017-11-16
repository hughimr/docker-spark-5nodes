#!/bin/bash

docker pull  hughntes/spark-hive:1.0:1.0


cd docker-spark-5nodes/autoscripts/
chmod a+x ./*
./start-spark-firstonce.sh
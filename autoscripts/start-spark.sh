#!/bin/bash

docker pull  hughntes/spark:1.0


cd docker-spark-5nodes/autoscripts/
chmod a+x ./*
./start-spark-firstonce.sh
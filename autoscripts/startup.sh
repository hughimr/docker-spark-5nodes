#!/bin/bash
##docker-ce 安装
sudo apt-get remove docker docker-engine docker.io
sudo apt-get update

sudo apt-get install -y \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual

sudo apt-get update
sudo apt-get install -y  \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install -y docker-ce

##安装docker-compose
sudo apt-get install -y python-pip python-dev build-essential
sudo pip install --upgrade pip
sudo pip install --upgrade virtualenv
sudo pip install docker-compose

sudo usermod -a -G docker $USER
sudo gpasswd -a ${USER} docker
sudo service docker restart
#如果没有效果执行下列命令
#newgrp - docker

docker pull  hughntes/spark-master:0.1
docker pull hughntes/spark-slave:0.1


cd docker-spark-5nodes/autoscripts/
chmod a+x ./*
./start-spark-firstonce.sh
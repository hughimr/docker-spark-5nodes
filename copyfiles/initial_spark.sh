#!/bin/bash
#sudo echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
#sudo echo "UserKnownHostsFile=/dev/null" >> /etc/ssh/ssh_config

# set scala variables
echo "export SCALA_HOME=/usr/local/scala-2.11.7/" >> ~/.bashrc
echo "export PATH=\$PATH:\$SCALA_HOME/bin" >> ~/.bashrc
echo "============================================================"
echo "done scala variable settings"
echo "============================================================"
source ~/.bashrc

# set spark variables

echo "export SPARK_HOME=/usr/local/spark-2.1.0-bin-hadoop2.6/" >> ~/.bashrc
echo "export PATH=\$PATH:\$SPARK_HOME/bin:\$SPARK_HOME/sbin" >> ~/.bashrc
echo "alias startspark='/usr/local/spark-2.1.0-bin-hadoop2.6/sbin/start-all.sh;/usr/local/spark-2.1.0-bin-hadoop2.6/sbin/start-history-server.sh'" >> ~/.bashrc
echo "alias stopspark='/usr/local/spark-2.1.0-bin-hadoop2.6/sbin/stop-all.sh'" >> ~/.bashrc
source ~/.bashrc
echo "============================================================"
echo "done spark variable settings"
echo "============================================================"

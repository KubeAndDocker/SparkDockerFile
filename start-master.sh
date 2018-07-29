#!/bin/sh

. /start-common.sh

echo "$(hostname -i) spark-master" >> /etc/hosts

/opt/spark-2.3.1-bin-hadoop2.6/sbin/start-master.sh --ip spark-master --port 7077
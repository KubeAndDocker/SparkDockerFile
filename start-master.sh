#!/bin/sh

. /start-common.sh

echo "$(hostname -i) spark-master" >> /etc/hosts

/opt/${SPARK_VERSION}-bin-${HADOOP_VERSION}/sbin/start-master.sh --ip spark-master --port 7077
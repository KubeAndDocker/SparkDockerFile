#!/bin/sh

. /start-common.sh

/opt/${SPARK_VERSION}-bin-${HADOOP_VERSION}/sbin/start-slave.sh spark://spark-master:7077
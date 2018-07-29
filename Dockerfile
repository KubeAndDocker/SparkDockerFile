FROM centos:7

ENV SPARK_VERSION=spark-2.3.1
ENV HADOOP_VERSION=hadoop2.6

RUN yum -y install wget
RUN yum -y install sudo
RUN yum -y install nano
RUN yum -y install cronie
RUN yum -y install java-1.8.0-openjdk
RUN sudo wget http://www-eu.apache.org/dist/spark/${SPARK_VERSION}/${SPARK_VERSION}-bin-${HADOOP_VERSION}.tgz
RUN sudo tar -xzf ${SPARK_VERSION}-bin-${HADOOP_VERSION}.tgz
RUN sudo mv ${SPARK_VERSION}-bin-${HADOOP_VERSION} opt/
ENV SPARK_HOME=/opt/${SPARK_VERSION}-bin-${HADOOP_VERSION}
ENV PATH=$SPARK_HOME/bin:$PATH

ADD start-common.sh start-worker.sh start-master.sh /
RUN chmod +x /start-common.sh /start-master.sh /start-worker.sh
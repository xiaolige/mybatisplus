#�����������ƺ�ID
FROM centos:7
#ָ�����񴴽�����Ϣ
MAINTAINER ITCAST
#�л�����Ŀ¼
WORKDIR /usr
RUN mkdir /usr/local/java
#ADD �����·��jar,��java��ӵ�������
ADD jdk-8u171-linux-x64.tar.gz /usr/local/java/
#����java��������
ENV JAVA_HOME /usr/local/java/jdk1.8.0_171
ENV JRE_HOME $JAVA_HOME/jre
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib:$CLASSPATH
ENV PATH $JAVA_HOME/bin:$PATH
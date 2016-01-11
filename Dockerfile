FROM	anapsix/alpine-java:jdk8

ENV JMETER_VERSION 2.13
ENV JMETER_HOME /opt/jmeter

WORKDIR		${JMETER_HOME}

RUN mkdir -p $JMETER_HOME && DIR=$(mktemp -d) && cd $DIR && \
	wget http://mirrors.koehn.com/apache/jmeter/binaries/apache-jmeter-$JMETER_VERSION.tgz && \
   	tar -zxf apache-jmeter-$JMETER_VERSION.tgz && mv apache-jmeter-$JMETER_VERSION/* $JMETER_HOME/ && \
	rm apache-jmeter-$JMETER_VERSION.tgz && cd $JMETER_HOME && rm -r $DIR

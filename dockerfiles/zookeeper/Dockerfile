FROM 172.17.8.101:5000/dockertelaviv/ubuntu-openjdk-jre

ENV ZOOKEEPER_VERSION 3.4.6

ADD http://www.apache.org/dist/zookeeper/zookeeper-$ZOOKEEPER_VERSION/zookeeper-$ZOOKEEPER_VERSION.tar.gz /opt/zookeeper-$ZOOKEEPER_VERSION.tar.gz
RUN \
    mkdir -p /opt/zookeeper \
    && tar -xz --strip-components 1 -f /opt/zookeeper-$ZOOKEEPER_VERSION.tar.gz -C /opt/zookeeper \
    && rm /opt/zookeeper-$ZOOKEEPER_VERSION.tar.gz

COPY zoo.cfg /opt/zookeeper/conf/

ENTRYPOINT [ "/opt/zookeeper/bin/zkServer.sh" ]

CMD [ "start-foreground" ]

FROM 172.17.8.101:5000/dockertelaviv/ubuntu-openjdk-jre

RUN \
    echo "deb http://repos.mesosphere.io/ubuntu/ trusty main" > /etc/apt/sources.list.d/mesosphere.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF \
    && DEBIAN_FRONTEND=noninteractive apt-get -y update \
    && DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends mesos chronos marathon \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /var/cache/*

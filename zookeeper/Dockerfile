FROM centos:7.4.1708

ARG zookeeper_version=3.4.14

ENV ZOOKEEPER_VERSION=$zookeeper_version \
    ZOOKEEPER_HOME=/opt/zookeeper

RUN yum install wget -y; yum clean all

# Get and install Java
RUN wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm -O /tmp/jdk-8u131-linux-x64.rpm
RUN yum localinstall /tmp/jdk-8u131-linux-x64.rpm -y
RUN rm -rf /tmp/*.rpm

# Get and install Zookeeper
RUN wget -c https://apache.org/dist/zookeeper/zookeeper-3.4.14/zookeeper-${ZOOKEEPER_VERSION}.tar.gz -O /tmp/zookeeper-${ZOOKEEPER_VERSION}.tar.gz
RUN tar -xvzf /tmp/zookeeper-${ZOOKEEPER_VERSION}.tar.gz -C /opt
RUN ln -s /opt/zookeeper-${ZOOKEEPER_VERSION} ${ZOOKEEPER_HOME}
RUN rm -rf /tmp/*.tar.gz

ADD zoo.cfg /opt/zookeeper/conf/zoo.cfg

WORKDIR ${ZOOKEEPER_HOME}

ENV PATH=${PATH}:${ZOOKEEPER_HOME}/bin

ENTRYPOINT ["zkServer.sh"]
CMD ["start-foreground"]

FROM docker.elastic.co/beats/filebeat:7.2.0

ADD ./filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN chmod go-w /usr/share/filebeat/filebeat.yml
USER filebeat

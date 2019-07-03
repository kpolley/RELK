FROM jupyter/all-spark-notebook

RUN rm -rf /opt/additional_jars \ 
  && mkdir /opt/additional_jars \
  && wget https://artifacts.elastic.co/downloads/elasticsearch-hadoop/elasticsearch-hadoop-7.2.0.zip -P /opt/additional_jars/ \
  && unzip /opt/additional_jars/*.zip -d /opt/additional_jars/ \
  && rm /opt/additional_jars/*.zip

ADD ./spark-defaults.conf /usr/local/spark/conf

# RELK
The Research Elastic Stack (ELK) 

![RELK Overview](resources/images/RELK_Overview.png)

## Goal
To make it just as easy to analyze data as it is to collect it. 

## Features
* **Kafka**: A distributed event streaming platform capable of handling trillions of events a day
* **FileBeat**: A lightweight single-purpose data shipper from Elastic
* **Elasticsearch**: A highly scalable search and analytics engine
* **Logstash**: A dynamic data collection pipeline with an extensible plugin ecosystem.
* **Kibana**: An analytics and visualization platform designed to work with Elasticsearch.
* **ES-Hadoop**: A library that allows Hadoop jobs (& therefore Spark) to interact with Elasticsearch.
* **Spark**: A fast and general-purpose cluster computing system. It provides high-level APIs in Scala, Python and R.
* **GraphFrames**: A package for Apache Spark which provides DataFrame-based Graphs.
* **Jupyter Notebook**: A web application that allows you to create interactive notebooks. 

## Preparation
The only major modifications needed are:
1. Remove and replace the elasticsearch index templates
    * Located in `RELK/elasticsearch/output_templates`

2. Remove and replace the logstash conf files
    * Located in `RELK/logstash/pipelines`

3. Either add the files to analyze into `RELK/filebeat/input_files` or configure Kafka/FileBeat to ingest files for your use-case.


## Running
1. Easy! `docker-compose up`

If you'd like to have the containers running in the background:
`docker-compose up -d`


## Other Notes
* Kafka listens on port 9092
* Kibana uses 5601 (Access it via localhost:5601)
* Jupyter uses 8888 (Access it via localhost:8888)
  *  By default, Jupyter notebooks password is 'research'. This can be changed in the docker-compose file

## TODO
* Password protect ES/Kibana

## Worthy mentions
* The inspiration: [HELK -- The Hunting Elastic Stack](https://github.com/Cyb3rWard0g/HELK)
* [Jupyer/Docker Stacks](https://github.com/jupyter/docker-stacks). An excellent repository with a ton of plug-and-play notebooks. It is incredible how easy it is to set up.
* [Docker @ Elastic](https://www.docker.elastic.co/): Plug-and-play docker containers for Beats, Logstash, Elasticsearch, and Kibana.

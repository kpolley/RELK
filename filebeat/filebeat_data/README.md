# filebeat_data

This folder will store the metadata and registry file that Filebeat uses to track where it was last reading. Mounting this local directory to the Docker container will allow Filebeat to restart without losing it's reading position.

#!/bin/bash

/usr/share/elasticsearch/scripts/upload_templates.sh &

/usr/local/bin/docker-entrypoint.sh

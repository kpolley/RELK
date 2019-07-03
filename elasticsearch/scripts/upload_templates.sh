#!/bin/bash

DIR=/usr/share/output_templates
ELASTICSEARCH_URL="http://relk-elasticsearch:9200"

for file in ${DIR}/*.json; do
    while true; do
        template_name=$(basename $file | sed 's/\.[^.]*$//')
        STATUS=$(curl -s -o /dev/null -w '%{http_code}' $ELASTICSEARCH_URL)
        if [ $STATUS -eq 200 ]; then
            curl -X POST $ELASTICSEARCH_URL/_template/$template_name -H 'Content-Type: application/json' -d@${file}
            break
        else
            sleep 1
        fi
    done
done

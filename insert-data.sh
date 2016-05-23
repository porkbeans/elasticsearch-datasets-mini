#!/bin/sh

curl -XPOST localhost:9200/dummy_little
curl -XPUT localhost:9200/dummy_little/marchandices/_mapping -d @mapping.json
curl -XPOST localhost:9200/dummy_little/marchandices/_bulk --data-binary @data.json > /dev/null

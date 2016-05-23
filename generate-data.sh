#!/bin/bash

for num in $(seq 50);do
  echo "{\"index\":{\"_id\":${num}}}"
  echo "{\"display_name\":\"item${num}\",\"price\":${num},\"sold\":${num}}"
done > $(dirname $0)/data.json

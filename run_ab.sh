#!/bin/bash

for ((i=0; i<1000; i++))
do
  ab -n 200 -c 100 "http://localhost:8080/" 
done

# curl -s "localhost:8081/jolokia/read/metrics:name=active-http-sessions" | jq .value.Count

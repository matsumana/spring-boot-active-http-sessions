#!/bin/bash

for ((i=0; i<1000; i++))
do
  ab -n 200 -c 100 "http://localhost:8080/sample/api/v1/hello"
done

# curl -s "http://localhost:8081/metrics" | jq .

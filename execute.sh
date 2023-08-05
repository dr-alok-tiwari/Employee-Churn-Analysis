#!/bin/sh -xe
export PATH=$PATH:/usr/local/bin
if [ $( docker ps -a -q --filter ancestor=telecom --format="{{.ID}}" | wc -l ) -gt 0 ]; then
	docker rm $(docker stop $(docker ps -a -q --filter ancestor=telecom --format="{{.ID}}"))
fi
docker build -t telecom .
docker run --name telecom -p 8000:8000 telecom &
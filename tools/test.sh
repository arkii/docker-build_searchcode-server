#!/bin/bash
# docker run -i -t -P --expose 80 -v /root/build/gitlab-ci:/root/build/gitlab-ci arkii/gitlab-ci /bin/bash
docker run -P -p 8080:8080 -d -v $(pwd):/root/build docker.io/arkii/searchcode-server

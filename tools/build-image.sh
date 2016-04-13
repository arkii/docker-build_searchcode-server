#!/bin/bash
#docker build --force-rm=true --no-cache=true --rm=true -t docker.io/arkii/nginx:1.8.0 .
docker build --force-rm=true --no-cache=true --rm=true -t $* .

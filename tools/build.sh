#!/bin/bash
docker run -itP --rm -v $(pwd):/root/build java:8-jre-alpine /bin/sh
#docker run -itP -v $(pwd):/root/build centos:6 /bin/bash

#!/bin/bash
version=$(wget -q -O /dev/stdout https://searchcode.com/product/version/ | tr -d \") && \
sed -i -e "/SERVER_VERSION/s/SERVER_VERSION.*$/SERVER_VERSION ${version}/" Dockerfile && \
git add . && \
git commit -m "${version}" && \
git push
git tag -f "${version}" && \
# git push origin --tags --force
git push --tags --force

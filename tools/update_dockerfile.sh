#!/bin/bash
version=$(wget -q -O /dev/stdout https://searchcode.com/product/version/ | tr -d \") && \
sed -i '' -e "/SERVER_VERSION/s/SERVER_VERSION.*$/SERVER_VERSION ${version}/" Dockerfile && \
git commit -a -m "${version}" && \
git tag -f "${version}" && \
git push origin :refs/tags/${version}
git push
git push --tags

FROM        java:8-jre-alpine
MAINTAINER  Arkii sqy6@163.com
ENV         SERVER_VERSION 1.0.3
ENV         URL https://searchcode.com/static/searchcode-server-community.tar.gz
RUN         wget -O /tmp/searchcode-server-community.tar.gz ${URL} && \
                cd /tmp && tar zxvf /tmp/searchcode-server-community.tar.gz && \
                rm -rf /srv && mv searchcode-server-community/release /srv && \
                rm -f /tmp/searchcode-server-community.tar.gz
WORKDIR     /srv
CMD         ["sh", "searchcode-server.sh"]
EXPOSE      8080/tcp

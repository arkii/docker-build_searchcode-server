FROM        java:8-jre-alpine
ENV         URL https://searchcodeserver.com/searchcode-server-community.tar.gz
RUN         apk update && apk add ca-certificates openssl && update-ca-certificates && \
                wget -O /tmp/searchcode-server-community.tar.gz ${URL} && \
                cd /tmp && tar zxvf /tmp/searchcode-server-community.tar.gz && \
                rm -rf /srv && mv searchcode-server-community/release /srv && \
                rm -f /tmp/searchcode-server-community.tar.gz
WORKDIR     /srv
CMD         ["sh", "searchcode-server.sh"]
EXPOSE      8080/tcp

FROM alpine
MAINTAINER Ryan Roberts <ryansroberts@gmail.com>

ENV ELASTIC_VERSION 1.7.1
ENV JAVA_VERSION 7.55.2.4.7-r0

RUN apk update && apk upgrade && \
apk add --update curl ca-certificates
RUN apk add --update openjdk7-jre-base

RUN \
  mkdir -p /opt && \
  cd /tmp && \
  curl https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-$ELASTIC_VERSION.tar.gz > elasticsearch-$ELASTIC_VERSION.tar.gz && \
  tar -xzf elasticsearch-$ELASTIC_VERSION.tar.gz && \
  rm -rf elasticsearch-$ELASTIC_VERSION.tar.gz && \
  mv elasticsearch-$ELASTIC_VERSION /opt/elasticsearch

# Define mountable directories.
VOLUME ["/elastic"]

# Mount elasticsearch.yml config
ADD config/elasticsearch.yml /opt/elasticsearch/config/elasticsearch.yml
#ADD ./start.sh /start.sh

# Define default command.
CMD ["/opt/elasticsearch/bin/elasticsearch"]

# Expose ports.
#   - 9200: HTTP
#   - 9300: transport
EXPOSE 9200
EXPOSE 9300

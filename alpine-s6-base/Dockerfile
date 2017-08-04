FROM alpine:latest

LABEL version="1.0" \
      maintainer="Jim Razmus II (https://github.com/jimrazmus/containers)" \
      description="Base container using Alpine Linux with S6 process manager."

ENV S6=v1.19.1.1

ADD https://github.com/just-containers/s6-overlay/releases/download/${S6}/s6-overlay-amd64.tar.gz /

#RUN tar xzf /tmp/s6-overlay-amd64.tar.gz -C /

ENTRYPOINT ["/init"]

CMD []

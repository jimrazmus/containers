FROM alpine:3.6

ENV S6=v1.19.1.1
ENV S6_FILE=s6-overlay-amd64.tar.gz

LABEL maintainer="Jim Razmus II (https://github.com/jimrazmus/containers)" \
      description="Base container using Alpine Linux with S6 process manager." \
      s6_version="v1.19.1.1"

RUN apk add --update curl \
    && curl -SLo /tmp/${S6_FILE} https://github.com/just-containers/s6-overlay/releases/download/${S6}/${S6_FILE} \
    && tar xzf /tmp/${S6_FILE} -C / \
    && rm /tmp/${S6_FILE} \
    && rm -rf /var/cache/apk/* \
    && apk del curl

ENTRYPOINT ["/init"]

CMD []

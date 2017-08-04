FROM alpine:3.6

ARG BUILD_DATE

ENV S6=v1.19.1.1
ENV S6_FILE=s6-overlay-amd64.tar.gz

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="Alpine S6 Base Image" \
      org.label-schema.description="Base image from Alpine Linux with S6 process manager" \
      org.label-schema.vcs_url="https://github.com/jimrazmus/containers/alpine-s6-base" \
      org.label-schema.version=$S6 \
      org.label-schema.schema-version="1.0"

RUN apk add --update curl \
    && curl -SLo /tmp/${S6_FILE} https://github.com/just-containers/s6-overlay/releases/download/${S6}/${S6_FILE} \
    && tar xzf /tmp/${S6_FILE} -C / \
    && rm /tmp/${S6_FILE} \
    && rm -rf /var/cache/apk/* \
    && apk del curl

ENTRYPOINT ["/init"]

CMD []

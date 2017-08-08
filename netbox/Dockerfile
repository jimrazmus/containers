FROM jimrazmus/alpine-s6-base:latest

RUN apk update && apk upgrade && apk add --no-cache \
      bash \
      build-base \
      ca-certificates \
      cyrus-sasl-dev \
      graphviz \
      jpeg-dev \
      libffi-dev \
      libxml2-dev \
      libxslt-dev \
      nginx \
      openldap-dev \
      python3 \
      python3-dev \
      postgresql-dev \
      wget \
    && pip3 install gunicorn==17.5 django-auth-ldap

ARG BUILD_DATE
ARG NB_VERS
ARG NB_FILE=v${NB_VERS}.tar.gz
ARG NB_URL=https://github.com/digitalocean/netbox/archive/${NB_FILE}

LABEL \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.name="Digital Ocean's Netbox" \
  org.label-schema.description="Netbox is an IPAM and DCIM tool" \
  org.label-schema.vcs_url="https://github.com/jimrazmus/containers/netbox" \
  org.label-schema.version=$NB_VERS \
  org.label-schema.schema-version="1.0"

ENV PATH /usr/local/bin:$PATH
ENV LANG C.UTF-8

WORKDIR /opt

RUN set -o pipefail \
    && wget -q -O - "${NB_URL}" | tar xz \
    && ln -s netbox-${NB_VERS} netbox

WORKDIR /opt/netbox

RUN ln -s netbox/netbox/configuration.docker.py configuration.py \
    && pip3 install -r requirements.txt

COPY rootfs /

EXPOSE 80

ENTRYPOINT [ "/init" ]

CMD []

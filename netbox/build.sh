#!/bin/bash

NETBOX=2.0.7

docker build --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
             --build-arg NB_VERS=${NETBOX} \
             -t jimrazmus/netbox:${NETBOX} \
             -t jimrazmus/netbox:latest .

docker push jimrazmus/netbox:${NETBOX}

# Tell Microbadger to refresh
#curl -X POST https://hooks.microbadger.com/images/jimrazmus/alpine-s6-base/n_ToWOPzJKS6chmSLn9icnBYSeg=

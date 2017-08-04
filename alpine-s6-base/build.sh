#!/bin/bash

docker build --build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M:%SZ"` \
             -t jimrazmus/alpine-s6-base:3.6 \
             -t jimrazmus/alpine-s6-base:latest .

docker push jimrazmus/alpine-s6-base:3.6

# Tell Microbadger to refresh
curl -X POST https://hooks.microbadger.com/images/jimrazmus/alpine-s6-base/n_ToWOPzJKS6chmSLn9icnBYSeg=

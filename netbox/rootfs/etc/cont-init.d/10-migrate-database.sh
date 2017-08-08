#!/bin/bash
set -e
while ! /opt/netbox/netbox/manage.py migrate 2>&1; do
    sleep 5
done

#!/bin/bash
set -e
/opt/netbox/netbox/manage.py collectstatic --no-input

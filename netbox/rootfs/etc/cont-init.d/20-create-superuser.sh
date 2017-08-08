#!/bin/bash
set -e
echo "from django.contrib.auth.models import User; User.objects.create_superuser('${SUPERUSER_NAME}', '${SUPERUSER_EMAIL}', '${SUPERUSER_PASSWORD}')" \
  | python /opt/netbox/netbox/manage.py shell

#python netbox/manage.py shell --plain << END
# from django.contrib.auth.models import User
# if not User.objects.filter(username='${SUPERUSER_NAME}'):
#     User.objects.create_superuser('${SUPERUSER_NAME}', '${SUPERUSER_EMAIL}', '${SUPERUSER_PASSWORD}')
# END

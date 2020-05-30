#!/bin/sh

python manage.py makemigrations --no-input
python manage.py migrate
python manage.py createsuperuser --no-input --username $DJANGO_SUPERUSER_USERNAME --email $DJANGO_SUPERUSER_EMAIL
exec "$@"
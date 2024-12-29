#!/bin/sh
 
# python manage.py makemigrations --noinput
python manage.py collectstatic
python manage.py migrate
gunicorn hacksprint.wsgi:application --bind 0.0.0.0:8000

exec "$@"
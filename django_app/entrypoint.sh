#!/bin/sh

python manage.py migrate --no-input

# python manage.py runserver 0.0.0.0:8000

gunicorn parrotsite.wsgi:application --bind 0.0.0.0:8000

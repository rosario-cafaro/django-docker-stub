#!/bin/sh

python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py collectstatic --noinput

gunicorn -w 4 -b 0.0.0.0:8000 django_stub_docker.wsgi
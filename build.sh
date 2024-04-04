#!/usr/bin/env bash
# exit on error
set -o errexit

# change this line for whichever package you use, such as pip, or poetry, etc.
pip install -r requirements.txt

# apply any database migrations that are outstanding
python manage.py 

#create Super User
if [ -n "$DJANGO_SUPERUSER_EMAIL" ]; then
	python manage.py createsuperuser --noinput
fi
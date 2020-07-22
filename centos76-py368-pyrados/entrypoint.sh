#!/bin/bash

service proxysql start

cd /home/uwsgi/iharbor
python3 manage.py collectstatic --noinput

./run_uwsgi.sh
tail -F /var/log/iharbor/uwsgi-iharbor.log


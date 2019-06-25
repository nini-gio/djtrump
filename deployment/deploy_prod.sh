#!/bin/sh

ssh -i /home/gio_saintgermain/Scrivania/AMAZON/AMAZON_AWS_EC2_UBUNTU.pem ubuntu@3.17.70.210 <<EOF
  cd djtrump
  git pull
  source ../env/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  python manage.py runserver 0.0.0.0:8000
  exit
EOF

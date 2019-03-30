#!/bin/bash
sudo apt-get install python3-pip python3-dev nginx git -y
sudo apt-get install virtualenv -y
virtualenv --python=python3 /home/ubuntu/venv
sudo chown ubuntu:ubuntu /home/ubuntu/cds-demo
source /home/ubuntu/venv/bin/activate
pip3 install -r /home/ubuntu/cds-demo/requirements/base.txt
pip3 install django bcrypt django-extensions
pip3 install gunicorn 




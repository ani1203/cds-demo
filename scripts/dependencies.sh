#!/bin/bash
sudo apt-get install python3-pip python3-dev nginx git -y
git clone https://github.com/ani1203/learnDjango.git /home/ubuntu
sudo apt-get install virtualenv -y
virtualenv --python=python3 /home/ubuntu/venv
sudo chown ubuntu:ubuntu /home/ubuntu/cds-demo
source /home/ubuntu/venv/bin/activate
pip3 install -r /home/ubuntu/cds-demo/requirements/base.txt
pip3 install django bcrypt django-extensions 
sudo cp /home/ubuntu/cds-demo/required-files/gunicorn.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable gunicorn
sudo unlink /etc/nginx/sites-enabled/*
sudo cp /home/ubuntu/cds-demo/required-files/chatApp /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/chatApp /etc/nginx/sites-enabled
sudo nginx -t
sudo rm /etc/nginx/sites-enabled/default
sudo service nginx restart


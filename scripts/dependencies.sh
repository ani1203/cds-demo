#!/bin/bash
virtualenv /home/ubuntu/venv
source /home/ubuntu/venv/bin/activate
pip3 install -r /home/ubuntu/cds-demo/requirements/base.txt
pip3 install gunicorn

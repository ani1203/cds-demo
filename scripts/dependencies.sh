#!/bin/bash
sudo apt-get install python3-pip python3-dev nginx git -y
sudo apt-get install virtualenv -y
virtualenv --python=python3 /home/ubuntu/venv
chown ubuntu:ubuntu cds-demo



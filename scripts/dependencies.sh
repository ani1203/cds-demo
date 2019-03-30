#!/bin/bash
sudo apt-get install python3-pip python3-dev nginx git -y
sudo pip3 install virtualenv
sudo chown ubuntu:ubuntu cds-demo
virtualenv /home/ubuntu/venv

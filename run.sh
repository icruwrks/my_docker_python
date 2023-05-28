#!/bin/bash

pip install --upgrade pip
pip install pip-tools
apt-get -y update
apt-get install -y less jq curl
pip-compile requirements/development.in
cp requirements/development.txt requirements.txt
pip install -r requirements.txt

# exec python
python hello.py

# if use reopen in container
sleep infinity
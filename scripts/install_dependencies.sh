#!/bin/bash
set -e
cd /opt/flask-app
if ! command -v pip3 >/dev/null 2>&1; then
  dnf install -y python3-pip || yum install -y python3-pip || apt-get install -y python3-pip
fi
pip3 install -r requirements.txt || pip3 install --break-system-packages -r requirements.txt

#!/bin/bash
cd /opt/flask-app
nohup python3 /opt/flask-app/app.py > /var/log/flask-app.log 2>&1 < /dev/null &
sleep 3
exit 0

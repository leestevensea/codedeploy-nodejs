#!/usr/bin/env bash

sudo useradd webapp

read -r -d '' SERVICE << SERVICE
[Unit]
Description=NodeJS WebApp example

[Service]
Restart=always
RestartSec=10
StandardOutput=syslog
StandardError=syslog
SyslogIdentifier=webapp
User=webapp
Group=webapp
ExecStart=/usr/bin/node /opt/webapp/index.js

[Install]
WantedBy=multi-user.target
SERVICE

echo "$SERVICE" | sudo tee /etc/systemd/system/webapp.service
sudo systemctl enable webapp

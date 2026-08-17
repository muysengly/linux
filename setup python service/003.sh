# start systemd
SERVICE_NAME=1riel_telegram
systemctl daemon-reexec
systemctl daemon-reload
systemctl enable ${SERVICE_NAME}.service
systemctl start ${SERVICE_NAME}.service

# *[OPTIONAL] 
# check status
SERVICE_NAME=1riel_telegram
systemctl status ${SERVICE_NAME}.service

# ?[OPTIONAL] 
# restart service
# systemctl restart ${SERVICE_NAME}.service
# systemctl status ${SERVICE_NAME}.service

# ?[OPTIONAL] stop service
SERVICE_NAME=service_1riel_app
systemctl stop ${SERVICE_NAME}.service
systemctl disable ${SERVICE_NAME}.service
# systemctl status ${SERVICE_NAME}.service


# ?[OPTIONAL] remove service
SERVICE_NAME=service_1riel_app
rm -rf /etc/systemd/system/${SERVICE_NAME}.service
systemctl daemon-reload

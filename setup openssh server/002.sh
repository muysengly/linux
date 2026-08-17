
########## Setup OpenSSH Server on Ubuntu ##########

# 
sudo apt update 

# install openssh-server
sudo apt install openssh-server -y

sudo apt install net-tools -y

ifconfig


# configure ssh to allow port 22 an d
sudo nano /etc/ssh/sshd_config


# uncomment and set the following lines:
# Port 22
# ListenAddress 0.0.0.0
# or use sed command:
sudo sed -i 's/#Port 22/Port 22/' /etc/ssh/sshd_config
sudo sed -i 's/#ListenAddress 0.0.0.0/ListenAddress 0.0.0.0/' /etc/ssh/sshd_config

# in windows:  remove ssh hostkey in window os
# del C:\Users\your_user\.ssh\known_hosts



# check ssh service status
sudo systemctl enable ssh
sudo systemctl start ssh
sudo systemctl status ssh

sudo systemctl daemon-reexec
sudo systemctl daemon-reload
sudo systemctl restart ssh


# ssh test connections
ssh ains@ains-pi
ssh gtr@gtr-server
ssh msl@msl-server


########## OPTIONAL ##########

#
sudo -i

# add root password
sudo passwd

# configure ssh to allow root login
sudo nano /etc/ssh/sshd_config
# PermitRootLogin yes


# list all service
# sudo systemctl list-units --type=service


# restart ssh service
sudo systemctl daemon-reload
sudo systemctl restart ssh

# OPTIONAL
# for raspberry pi os
sudo systemctl daemon-reload
sudo systemctl restart sshd

########## __________ ##########

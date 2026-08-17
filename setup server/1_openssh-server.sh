# install openssh-server
sudo apt install openssh-server -y

# configure ssh to allow port 22 and permit root login
sudo sed -i 's/#Port 22/Port 22/' /etc/ssh/sshd_config
sudo sed -i 's/#ListenAddress 0.0.0.0/ListenAddress 0.0.0.0/' /etc/ssh/sshd_config
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config


# restart ssh service
sudo systemctl daemon-reexec
sudo systemctl daemon-reload
sudo systemctl restart ssh

# check ip
hostname -I

 
# Note: if you want to root access via ssh, you need to set a password for root user
# sudo passwd root
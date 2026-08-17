# install samba server on ubuntu
sudo apt update && sudo apt upgrade -y


# install samba package
sudo apt install samba -y


# sudo add a new user for samba
sudo adduser public


# add to sudo
sudo usermod -aG sudo public


# add public user to samba
sudo smbpasswd -a public


# enable samba user
sudo smbpasswd -e public


# [OPTIONAL]: change smb password for the user
sudo smbpasswd gtr


# prepare your shared folder
sudo mkdir -p /path/to/your/shared/folder
sudo chown gtr:gtr /path/to/your/shared/folder
sudo chmod 770 /path/to/your/shared/folder



# configure Samba share
sudo nano /etc/samba/smb.conf

[public]
   path = /home/public
   browseable = yes
   read only = no
   valid users = public
   create mask = 0770
   directory mask = 0770
   force user = public
   force group = public





# restart Samba service and check status
sudo systemctl daemon-reload
sudo systemctl restart smbd
sudo systemctl status smbd
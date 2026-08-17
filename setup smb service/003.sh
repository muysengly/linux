
# install samba server on ubuntu
sudo apt update && sudo apt upgrade -y

# install samba package
sudo apt install samba -y


# enable samba user
sudo smbpasswd -e gtr

# set samba user password
sudo smbpasswd -a gtr


# [OPTIONAL]: change smb password for the user
sudo smbpasswd gtr


# prepare your shared folder
sudo mkdir -p /path/to/your/shared/folder
sudo chown gtr:gtr /path/to/your/shared/folder
sudo chmod 770 /path/to/your/shared/folder



# configure Samba share
sudo nano /etc/samba/smb.conf

[storage]
   path = /home/msl
   browseable = yes
   read only = no
   valid users = msl
   create mask = 0770
   directory mask = 0770
   force user = msl
   force group = msl



# restart Samba service and check status
sudo systemctl daemon-reload
sudo systemctl restart smbd
sudo systemctl status smbd
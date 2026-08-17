# Setup SSH

```bash
# update and upgrade system
sudo apt update
sudo apt upgrade -y

# install openssh-server
sudo apt install openssh-server -y

# install net-tools
sudo apt install net-tools -y

# check ip address
ifconfig

# connect to server via ssh
ssh USER@IP_ADDRESS

# switch to root
sudo su

# set root password
passwd

# configure ssh to allow port 22 and permit root login
sudo sed -i 's/#Port 22/Port 22/' /etc/ssh/sshd_config
sudo sed -i 's/#ListenAddress 0.0.0.0/ListenAddress 0.0.0.0/' /etc/ssh/sshd_config
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config


# restart ssh service
sudo systemctl daemon-reexec
sudo systemctl daemon-reload
sudo systemctl restart ssh


```

# Setup Tailscale

```bash
# install curl if not installed
sudo apt install curl -y

# install tailscale
curl -fsSL https://tailscale.com/install.sh | sh

# start tailscale with login
sudo tailscale up

```

# Setup Docker

```bash
# install docker
sudo apt install docker.io -y

# reload docker service
sudo systemctl daemon-reexec
sudo systemctl daemon-reload

# enable docker service
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker

```

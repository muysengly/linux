# 
sudo apt update && sudo apt upgrade -y

# install wifi tools nmcli
sudo apt install network-manager -y

# check wifi status
nmcli device status

# list available wifi networks
nmcli device wifi list

# connect to wifi network
nmcli device wifi connect "SSID" password "PASSWORD"
nmcli device wifi connect "ITC x HUAWEI" password "itcxhuawei2025"

# show wifi connection details
nmcli connection show "ITC x HUAWEI"

# check connection status
nmcli connection show
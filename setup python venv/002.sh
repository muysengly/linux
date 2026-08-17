
# update and upgrade system packages
sudo apt update && sudo apt upgrade -y


# install python3-venv package
sudo apt install python3-venv python3-pip -y


# create a new virtual environment
python3 -m venv .venv
source .venv/bin/activate


# example install numpy package
pip install numpy


# export installed packages to requirements.txt
pip freeze > requirements.txt


# export installed packages to requirements.txt (without version numbers) on windows
pip freeze | sed 's/==.*//' > requirements.txt


# install requerement.txt packages
pip install -r requirements.txt


# deactivate the virtual environment
deactivate


# remove the virtual environment
sudo rm -rf .venv
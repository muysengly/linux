
##########__________##########

# update and upgrade system
sudo apt update && sudo apt upgrade -y

# add a new user interactively
sudo adduser aaa

# add a new user non-interactively
sudo useradd -m -s /bin/bash user_001
# `-m`: create home directory
# `-s`: specify shell

# set user password interactively
sudo passwd user_001


# add password to user non-interactively
echo "user_001:aaa" | sudo chpasswd
# `chpasswd`: change user password

# create new group non-interactively
sudo groupadd group_001

# add user to group non-interactively
sudo usermod -aG group_001 user_001
# `-aG`: append user to group

# add user to sudo group non-interactively
sudo usermod -aG sudo user_001
# `-aG`: append user to group




##########__________##########



sudo useradd -m -s /bin/bash muysengly
echo "muysengly:asdfghjkl;'" | sudo chpasswd
sudo usermod -aG sudo muysengly



# variable users
USERNAMES=(
dev01
dev02
dev03
)

# variable passwords
PASSWORDS=(
dev01
dev02
dev03
)



for i in "${!USERNAMES[@]}"; do
    USERNAME=${USERNAMES[$i]}
    PASSWORD=${PASSWORDS[$i]}
    echo "Creating user: $USERNAME with password: $PASSWORD"
    sudo useradd -m -s /bin/bash $USERNAME
    echo "$USERNAME:$PASSWORD" | sudo chpasswd
    sudo usermod -aG sudo $USERNAME
done




# show all user
awk -F: '$3 == 0 || $3 >= 1000 { print $1 }' /etc/passwd


##########__________##########


# variable users
USERNAMES=(
dev01
dev02
dev03
)

# echo all usernames
echo "${USERNAMES[@]}"


for USERNAME in "${USERNAMES[@]}"; do
    echo "Removing user: $USERNAME"
    if id "$USERNAME" &>/dev/null; then
        sudo pkill -u "$USERNAME" || true
        sudo loginctl terminate-user "$USERNAME" || true
        sudo crontab -u "$USERNAME" -r 2>/dev/null || true
        sudo userdel -r "$USERNAME" || { echo "Failed to delete $USERNAME" >&2; continue; }
        echo "Removed $USERNAME"
    else
        echo "User $USERNAME does not exist, skipping."
    fi
done



# show all user
awk -F: '$3 == 0 || $3 >= 1000 { print $1 }' /etc/passwd


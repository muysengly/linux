# change ubuntu username (complete: rename user, group, and home dir)

# better: rename user AND move home directory to match
sudo usermod -l msl -d /home/msl -m muysengly

# also rename the primary group to match (same name as old username)
sudo groupmod -n msl muysengly


# check users
sudo cat /etc/passwd | grep -E 'msl|root|ubuntu'

echo 'starting setup for server'
sudo dnf update
sudo dnf install vim ufw python-virtualenv -y

# install docker here
sudo dnf install dnf-plugins-core -y
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce -y
sudo systemctl start docker



# Install requirements
sudo apt-get install openssh-server python-yaml python-paramiko python-jinja2

#Install Ansible
mkdir ~/gitRepos
cd ~/gitRepos
git clone git://github.com/ansible/ansible.git ~/ansible
cd ./ansible
source ./hacking/env-setup

echo "127.0.0.1" > ~/ansible_hosts
export ANSIBLE_HOSTS=~/ansible_hosts

#Copy over ssh key to IP of the address you wish to configure
ssh-copy-id 127.0.0.1




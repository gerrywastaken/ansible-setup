#!/usr/bin/zsh
# Install requirements
sudo apt-get install \
openssh-server \
python-paramiko python-yaml python-jinja2 \
cdbs debhelper dpkg-dev git-core reprepro


# Install Ansible
git clone git://github.com/ansible/ansible.git ~/gitRepos/ansible
cd ~/gitRepos/ansible
# Create the installer. Currently the easiest way to install on Ubuntu.
make deb
# Run the installer
sudo dpkg -i ../ansible*.deb
# Make the installed ansible packages immediatly available for use
hash -rf 
rm ../ansible*.deb

git clone git://github.com/gerrywastaken/ansible-playbooks.git ~/gitRepos/ansible-playbooks
cd ~/gitRepos/ansible-playbooks

# Run our local playbook on a local connection and ask for the sudo password
ansible-playbook -K --connection=local local.yml

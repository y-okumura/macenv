curl https://bootstrap.pypa.io/ez_setup.py -o - | sudo python
sudo easy_install pip
sudo pip install ansible

ansible-playbook dev-playbook.yml

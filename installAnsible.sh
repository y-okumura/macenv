xcode-select --install 
curl https://bootstrap.pypa.io/ez_setup.py -o - | sudo python
curl https://bootstrap.pypa.io/get-pip.py -O | sudo python
sudo pip install ansible

ansible-playbook dev-playbook.yml

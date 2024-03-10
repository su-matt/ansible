#! bin/bash

# Install Ansible
pip install ansible

ansible-playbook -K bootstrap.yml

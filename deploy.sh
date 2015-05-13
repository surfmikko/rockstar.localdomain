#!/bin/bash
[ -d venv ] || python3 -m venv venv
source venv/bin/activate
ansible --version || pip install ansible
ansible-playbook -i invenotory/rockstar site.yml

#!/usr/bin/env bash

if [ $# -lt 1 ]
then
  echo "Usage: `basename $0` LAPTOP_ENVIRONMENT [EXTRA_VARS]"
  exit 1
fi

ansible-galaxy install -r requirements.$1.yml

ansible-playbook playbooks/$1.yml ${@:2}

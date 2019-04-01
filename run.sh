#!/usr/bin/env bash

case "$(hostname -s)" in
  jared-precision)
    LAPTOP_ENVIRONMENT=precision
    ;;
  jhocutt-thinkpad)
    LAPTOP_ENVIRONMENT=thinkpad
    ;;
  *)
    echo "This script does not support the current laptop environment."
    exit 1
esac

ansible-galaxy install -r requirements.${LAPTOP_ENVIRONMENT}.yml --ignore-errors

ansible-playbook playbooks/${LAPTOP_ENVIRONMENT}.yml ${@}

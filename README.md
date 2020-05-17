# Laptop

A set of automation that I use to provision and configure my laptop.

## Assumptions

It is assumed that after Fedora has been installed, that the following is true.

- An SSH key exists and has been added to your GitHub

## Initial Setup

Install Git and Python.

```bash
sudo dnf install -y \
    git \
    python3 \
    python3-pip \
    pipenv
```

Clone this repository.

```bash
git clone git@github.com:jaredhocutt/laptop.git
```

Install dependencies.

```bash
cd laptop/

pipenv install
pipenv shell

ansible-galaxy install -r requirements.yml
```

## Running The Automation

Activate the environment, if you have not already done so.

```bash
cd laptop/

pipenv shell
```

Run the automation for the laptop you want.

For example, for your `personal` laptop, you would run the following.

```bash
ansible-playbook playbooks/personal.yml -Kv
```

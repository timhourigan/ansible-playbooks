# Ansible Playbooks

A selection of Ansible playbooks and roles.

## Prerequisites

* Python pip (https://pip.pypa.io/en/stable/installing/)
* pipenv (https://pipenv.readthedocs.io/en/stable/)

```shell
# Debian/Ubuntu example
sudo apt install python3-pip
python3 -m pip install pip --upgrade
python3 -m pip install pipenv
```

## Usage

* Setup the virtual environment. Add `--dev`, for development.

```shell
pipenv sync --dev
```
## Role Development

* Create a role structure with `molecule`.

```shell
molecule init role <role-name> --driver-name docker
```

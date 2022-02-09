# Ansible Playbooks

A selection of Ansible playbooks and roles.

## Roles

| Roles                                |                                      |
|:-------------------------------------|:-------------------------------------|
| [info](roles/fzf/README.md)          | Productivity - Fuzzy Finder          |
| [autojump](roles/autojump/README.md) | Productivity - Filesystem Navigation |


## Role Development

### Prerequisites

* Python 3.10
* Python pip (https://pip.pypa.io/en/stable/installing/)
* pipenv (https://pipenv.readthedocs.io/en/stable/)

```shell
# Debian/Ubuntu example
sudo apt install python3-pip
python3 -m pip install pip --upgrade
python3 -m pip install pipenv
```

### Usage

```shell
$ make help
clean: Clean generated files, including virtual environment
env-lock: Update environment lock file
env-update: Update environment
help: This menu
lint: Lint source
lint-yaml: Lint YAML source
test: Test Ansible roles 
```

### Create a Roles

* Create a role structure with `molecule`.

```shell
molecule init role <role-name> --driver-name docker
```

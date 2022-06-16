# Ansible Playbooks

A selection of Ansible playbooks and roles.

## Roles

| Roles                                  | Description                  |
|:---------------------------------------|:-----------------------------|
| [apt_proxy](roles/apt_proxy/README.md) | Configure APT proxy settings |
| [autojump](roles/autojump/README.md)   | Filesystem Navigation        |
| [bat](roles/bat/README.md)             | `cat` alternative            |
| [exa](roles/exa/README.md)             | `ls` alternative             |
| [fzf](roles/fzf/README.md)             | Fuzzy Finder                 |
| [go](roles/go/README.md)               | Go Language                  |
| [ripgrep](roles/ripgrep/README.md)     | `grep` alternative           |
| [pipx](roles/pipx/README.md)           | Python application installer |
| [pyenv](roles/pyenv/README.md)         | Python versions manager      |
| [rust](roles/rust/README.md)           | Rust Language                |

## Playbooks

| Playbooks      | Description          |
|:---------------|:---------------------|
| plays/dev.yaml | Software development |

### Run Locally

Local run example:

```shell
# Replace username, as desired
# It is expected to be an existing user on the system
$ ansible-playbook --extra-vars "username=myname" --ask-become-pass --connection local --inventory localhost, plays/dev.yaml
```

## Role Development

### Prerequisites

* Python 3.10
* Python pip (https://pip.pypa.io/en/stable/installing/)
* pipenv (https://pipenv.readthedocs.io/en/stable/)

```shell
# Debian/Ubuntu example
$ sudo apt install python3-pip
$ python3 -m pip install pip --upgrade
$ python3 -m pip install pipenv
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
$ molecule init role <role-name> --driver-name docker
```

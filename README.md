# ansible-educational-apps

A collection of Ansible playbooks to install educational applications and games.

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

* Setup the virtual environment

```shell
pipenv sync
```

* If pipenv command is not found, add the python user packages to PATH by including the following line in `~/.profile` and `source ~/.profile`

```shell
PATH="$(python3 -m site --user-base)/bin:${PATH}"
```

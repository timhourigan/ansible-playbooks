# pyenv

Installs [pyenv](https://github.com/pyenv/pyenv).

## Environment Setup

The role does not modify dotfiles. See https://github.com/pyenv/pyenv#set-up-your-shell-environment-for-pyenv for instructions.

## Requirements

`git`- Installed by the role

## Role Variables

`username` - User account to install to

## Dependencies

N/A

## Example Playbook

```yaml
    - hosts: servers
      roles:
         - { role: pyenv }
```

## License

MIT

## Author Information

[Tim Hourigan](https://github.com/timhourigan)

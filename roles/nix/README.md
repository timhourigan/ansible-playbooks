# pyenv

Installs [nix package manager](https://nixos.org/download.html#nix-verify-installation).

## Environment Setup

The role does not modify dotfiles. An example `bash` source is:

```shell
if [ -e /home/<username>/.nix-profile/etc/profile.d/nix.sh ]; then . /home/<username>/.nix-profile/etc/profile.d/nix.sh; fi
```

## Requirements

N/A

## Role Variables

`username` - User account to install to

## Dependencies

N/A

## Example Playbook

```yaml
    - hosts: servers
      roles:
         - { role: nix }
```

## License

MIT

## Author Information

[Tim Hourigan](https://github.com/timhourigan)

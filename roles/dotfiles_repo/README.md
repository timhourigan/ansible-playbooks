# dotfiles

Installs a GNU stow based dotfile repository.

## Requirements

Package dependencies are managed by the role

## Role Variables

`username` - User account to install to

## Dependencies

N/A

## Example Playbook

```yaml
    - hosts: servers
      roles:
         - { role: dotfiles }
```

## License

MIT

## Author Information

[Tim Hourigan](https://github.com/timhourigan)

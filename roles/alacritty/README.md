# alacritty

Installs [alacritty](https://github.com/alacritty/alacritty).

## Requirements

- Requires build packages, which are installed by the role
- Rust Cargo module (`community.general.cargo`), installed with `ansible-galaxy collection install community.general`

## Role Variables

N/A

## Dependencies

- `rust` role

## Example Playbook

```yaml
    - hosts: servers
      roles:
         - { role: alacritty }
```

## License

MIT

## Author Information

[Tim Hourigan](https://github.com/timhourigan)

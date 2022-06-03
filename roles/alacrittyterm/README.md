# alacrittyterm

Installs [alacritty](https://github.com/alacritty/alacritty).

Note, the role is called `alacrittyterm` because ansible ignores the role, for some unknown reason, if it is called `alacritty`.

## Requirements

- Requires build packages, which are installed by the role
- Rust Cargo module (`community.general.cargo`), installed with `ansible-galaxy collection install community.general`

## Role Variables

N/A

## Dependencies

- `rust` role, configured in `meta/main.yml`

## Example Playbook

```yaml
    - hosts: servers
      roles:
         - { role: alacrittyterm }
```

## License

MIT

## Author Information

[Tim Hourigan](https://github.com/timhourigan)

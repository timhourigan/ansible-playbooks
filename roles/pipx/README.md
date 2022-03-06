# pipx

Installs [pipx](https://pypa.github.io/pipx).

## Auto Completions

To use auto completions:

* Run the following for instructions: `pipx completions`

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
         - { role: pipx }
```

## License

MIT

## Author Information

[Tim Hourigan](https://github.com/timhourigan)

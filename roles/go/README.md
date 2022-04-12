# go

Installs [go](https://go.dev/) toolchain.

## Path

Assumes `PATH` is configured to include `/usr/local/go/bin`. This can be achieved by adding the following to ``$HOME/.profile` or /etc/profile`:

`export PATH=$PATH:/usr/local/go/bin`

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
         - { role: go }
```

## License

MIT

## Author Information

[Tim Hourigan](https://github.com/timhourigan)

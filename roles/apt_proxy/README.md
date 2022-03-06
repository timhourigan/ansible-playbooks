# apt_proxy

Configures APT proxy settings. Currently assumes the same URL for both HTTP and HTTPS.

## Requirements

N/A

## Role Variables

apt_proxy_url - APT Proxy URL e.g. `http://192.168.0.123:3142`

## Dependencies

N/A

## Example Playbook

```yaml
    - hosts: servers
      roles:
         - { role: apt_proxy }
```

## License

MIT

## Author Information

[Tim Hourigan](https://github.com/timhourigan)

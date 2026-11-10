# Firewall

This project configures a firewall with `ufw` on the web servers so that only the ports needed for SSH and web traffic are reachable.

## Environment

- Ubuntu 20.04 LTS
- ufw (Uncomplicated Firewall)
- Applied on `web-01` (`7281-web-01`)

## Files

| File | Description |
|---|---|
| `0-block_all_incoming_traffic_but` | ufw commands that block all incoming traffic except TCP ports 22 (SSH), 80 (HTTP) and 443 (HTTPS) |

## Usage

Run the commands in the file on the server:

```
sudo ./0-block_all_incoming_traffic_but
```

Check the result:

```
sudo ufw status verbose
```

Expected: `Status: active`, default `deny (incoming)`, and ALLOW rules for `22/tcp`, `80/tcp` and `443/tcp`.

## Author

Joshua Stanley Hotay

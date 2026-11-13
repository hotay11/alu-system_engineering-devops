# Web Stack Debugging 1

## Description
This project is part of the web stack debugging series. The goal is to find
out why Nginx is not listening on port 80 in an Ubuntu container, then write
a Bash script that fixes it with the minimum number of commands.

## Task
### 0. Nginx likes port 80
Nginx must be running and listening on port `80` of all the server's active
IPv4 addresses.

- **File:** `0-nginx_likes_port_80`
- **Fix:** re-link the default site config into `sites-enabled` so Nginx
  listens on port 80, then restart the Nginx service.

## Usage
Copy the script into the broken container and run it:

```bash
./0-nginx_likes_port_80
```

Then test that Nginx answers on port 80:

```bash
curl 0:80
```

Expected output: the default `Welcome to nginx!` page.

## Requirements
- Tested on Ubuntu 20.04 LTS
- Scripts are executable
- First line of each script: `#!/usr/bin/env bash`
- Second line of each script: a comment describing what it does
- Scripts pass Shellcheck
- All files end with a new line
- `wget` is not used


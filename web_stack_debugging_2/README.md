# Web Stack Debugging 2

## Description
Part of the web stack debugging series. This project covers running
software as another user and running Nginx as the unprivileged `nginx`
user on port 8080.

## Tasks
### 0. Run software as another user
- **File:** `0-iamsomeoneelse`
- Runs `whoami` under the user passed as an argument.

### 1. Run Nginx as Nginx
- **File:** `1-run_nginx_as_nginx`
- Configures Nginx to run as the `nginx` user and listen on port 8080
  on all active IPs.

## Usage
```bash
./0-iamsomeoneelse www-data
./1-run_nginx_as_nginx
```

## Requirements
- Tested on Ubuntu 14.04 LTS
- Scripts are executable and pass Shellcheck
- First line: `#!/usr/bin/env bash`, second line: a descriptive comment
- All files end with a new line


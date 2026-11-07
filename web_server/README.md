
# Web Server

This project covers the basics of running a web server: transferring files with `scp`, installing and configuring Nginx, setting up a redirect and a custom 404 page, and pointing a domain name at the server.

## What I learned

- The main role of a web server is to receive HTTP requests and send back pages.
- A web server uses a parent process and child processes, so it can handle many requests at the same time.
- The main HTTP request methods (GET, POST, PUT, DELETE).
- What DNS is and what it does: it translates domain names into IP addresses.
- DNS record types: A, CNAME, TXT and MX.

## Files

| File | Description |
|------|-------------|
| `0-transfer_file` | Transfers a file to a server with `scp`. Takes the file path, server IP, username and SSH key path. Shows a usage message if fewer than 4 arguments are given. |
| `1-install_nginx_web_server` | Installs Nginx and serves a page containing "Holberton School" on port 80. |
| `2-setup_a_domain_name` | Contains my `.tech` domain name, with an A record pointing to the web-01 IP. |
| `3-redirection` | Configures Nginx so `/redirect_me` returns a 301 Moved Permanently redirect. |
| `4-not_found_page_404` | Configures Nginx with a custom 404 page containing "Ceci n'est pas une page". |
| `5-design_a_beautiful_404_page.html` | A custom designed 404 page. |

## Usage

Transfer a file to the server:

    ./0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY

Configure a new Ubuntu machine (run on the server as root):

    ./1-install_nginx_web_server
    ./3-redirection
    ./4-not_found_page_404

Test the results:

    curl localhost
    curl -sI localhost/redirect_me
    curl -sI localhost/xyz

## Requirements

- Ubuntu server with Nginx
- Scripts start with `#!/usr/bin/env bash`, have a comment on line 2, and are executable
- Nginx is restarted with `service nginx restart` (no `systemctl`)
- All files end with a new line

## Security note

SSH private keys are never committed to this repository.
EOF

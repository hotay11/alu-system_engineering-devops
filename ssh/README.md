cat > README.md << 'EOF'
# SSH Project

This project covers the basics of connecting to a remote server with SSH
using an RSA key pair instead of a password.

## What I learned

- What a server is and where servers usually live (datacenters)
- What SSH (Secure Shell) is
- How to create an SSH RSA key pair
- How to connect to a remote host using a private key
- Why `#!/usr/bin/env bash` is better than `#!/bin/bash`: it finds bash
  wherever it is installed instead of assuming one fixed location

## Files

| File | Description |
|------|-------------|
| `0-use_a_private_key` | Bash script that connects to the server as `ubuntu` using the private key `~/.ssh/school` |
| `1-create_ssh_key_pair` | Bash script that creates a 4096-bit RSA key pair named `school`, protected by a passphrase |
| `2-ssh_config` | SSH client configuration that uses `~/.ssh/school` and refuses password authentication |

## Usage

Create the key pair:

    ./1-create_ssh_key_pair

Connect to the server:

    ./0-use_a_private_key

After the config file is installed in `~/.ssh/config`, a plain
`ssh ubuntu@<server-ip>` also works with no extra options.

## Requirements

- Ubuntu 20.04 LTS
- All scripts start with `#!/usr/bin/env bash`, have a comment on line 2,
  and are executable
- All files end with a new line

## Security note

The private key (`school`) is never committed to this repository.
Only the scripts and the client configuration are shared.

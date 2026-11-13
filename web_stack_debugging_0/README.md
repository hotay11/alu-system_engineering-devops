# Web Stack Debugging 0

## Description
This project is the first in the web stack debugging series. The goal is to
diagnose a broken web server running in a Docker container and write a Bash
script that brings it to a working state.

## Task
### 0. Give me a page!
Apache must run in the container and return a page containing
`Hello Holberton` when the root of the server is queried.

- **File:** `0-give_me_a_page`
- **Fix:** start the Apache service and make sure the default page
  (`/var/www/html/index.html`) contains `Hello Holberton`.

## Usage
Run the container and test it from the host:

```bash
docker run -p 8080:80 -d -it holbertonschool/265-0
docker exec -ti <container_id> /bin/bash
```

Inside the container, run the script:

```bash
./0-give_me_a_page
```

Then test from the host:

```bash
curl 0:8080
```

## Requirements
- Tested on Ubuntu 14.04 LTS
- Scripts are executable
- First line of each script: `#!/usr/bin/env bash`
- Second line of each script: a comment describing what it does
- Scripts pass Shellcheck
- All files end with a new line

## Author
Joshua Hotay
EOF

# Web Stack Debugging 4

## Description
Part of the web stack debugging series. An Nginx web server fails many
requests under load (tested with ApacheBench). The cause is a very low open
file limit, fixed and automated with Puppet.

## Tasks
### 0. Sky is the limit, let's bring that limit higher
- **File:** `0-the_sky_is_the_limit_not.pp`
- Raises the `ULIMIT` in `/etc/default/nginx` and restarts Nginx so that
  `ab -c 100 -n 2000 localhost/` reports 0 failed requests.

## Usage
```bash
puppet apply 0-the_sky_is_the_limit_not.pp
ab -c 100 -n 2000 localhost/
```

## Requirements
- Tested on Ubuntu 14.04 LTS with Puppet 3.4
- Manifests pass puppet-lint 2.1.1
- First line of each manifest is a comment
- All files end with a new line

## Author
Your Name

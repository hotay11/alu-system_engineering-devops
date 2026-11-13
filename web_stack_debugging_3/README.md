# Web Stack Debugging 3

## Description
Part of the web stack debugging series. A WordPress site on a LAMP stack
returns a 500 error from Apache. The cause is found with `strace` and the
fix is automated with Puppet.

## Tasks
### 0. Strace is your friend
- **File:** `0-strace_is_your_friend.pp`
- Fixes a typo (`phpp` instead of `php`) in `wp-settings.php` so Apache
  returns a 200 instead of a 500.

## Usage
```bash
puppet apply 0-strace_is_your_friend.pp
curl -sI 127.0.0.1
```

## Requirements
- Tested on Ubuntu 14.04 LTS with Puppet 3.4
- Manifests pass puppet-lint 2.1.1
- First line of each manifest is a comment
- All files end with a new line

## Author
Your Name

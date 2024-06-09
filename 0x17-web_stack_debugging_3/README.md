# 0x17. Web Stack Debugging #3

This project involves debugging a Wordpress website running on a LAMP stack (Linux, Apache, MySQL, and PHP). The primary focus is using `strace` to identify and fix an issue causing Apache to return a 500 error.

## Requirements
- All files are interpreted on Ubuntu 14.04 LTS.
- All files end with a new line.
- Puppet manifests pass `puppet-lint` version 2.1.1 without any errors.
- Puppet manifests run without error.
- Puppet manifests first line is a comment explaining what the manifest is about.
- Puppet manifests files end with the extension `.pp`.
- Files checked with Puppet v3.4.

## Tasks
### 0. Strace is your friend
Using `strace`, find out why Apache is returning a 500 error. Fix it and automate it using Puppet.

### Setup Commands
```sh
apt-get install -y ruby
gem install puppet-lint -v 2.1.1

# 0x1B. Web Stack Debugging #4

## Description

This project involves debugging a web stack that uses Nginx and addressing issues to ensure the server can handle a high number of requests without errors. We will use Puppet manifests to automate the fixes and configurations.

## Files

- `0-the_sky_is_the_limit_not.pp`: Puppet manifest to fix the web server setup to handle high traffic without failed requests.
- `1-user_limit.pp`: Puppet manifest to adjust OS configuration for the `holberton` user to log in and open files without errors.

## Requirements

- All files will be interpreted on Ubuntu 14.04 LTS.
- All files should end with a new line.
- Puppet manifests must pass `puppet-lint` version 2.1.1 without any errors.
- Puppet manifests must run without error.
- Puppet manifests first line must be a comment explaining the manifest.
- Puppet manifests files must end with the extension `.pp`.
- Files will be checked with Puppet v3.4.

## Technologies Used

- Ubuntu 14.04 LTS
- Puppet v3.4
- Nginx
- ApacheBench

## Installation and Usage

### Installing Puppet and Puppet-lint

```sh
apt-get install -y ruby
gem install puppet-lint -v 2.1.1

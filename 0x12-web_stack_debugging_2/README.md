# 0x12. Web Stack Debugging #2

## Description
This project involves debugging web stack issues in a Unix-based system. The tasks focus on running software as another user, ensuring services run with the least privilege, and optimizing scripts.

## Requirements
- All scripts will be interpreted on Ubuntu 20.04 LTS
- All scripts should end with a new line
- All Bash script files must be executable
- Scripts must pass Shellcheck without any error
- Scripts must run without error
- The first line of all Bash scripts should be exactly `#!/usr/bin/env bash`
- The second line of all Bash scripts should be a comment explaining what the script is doing

## Files
- `0-iamsomeoneelse`: Script to run `whoami` command as another user.
- `1-run_nginx_as_nginx`: Script to configure Nginx to run as the `nginx` user.
- `100-fix_in_7_lines_or_less`: Optimized version of the Nginx configuration script.

## Usage
Each script can be executed by running `./<script_name> <arguments>`.

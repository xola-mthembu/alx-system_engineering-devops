# Load Balancer Configuration Project

## Overview
This project involves setting up a load balancer using HAproxy to distribute traffic between two Nginx web servers. Custom HTTP headers are used to track responses from the servers.

## Files
- `0-custom_http_response_header`: Bash script for configuring Nginx to send a custom header.
- `1-install_load_balancer`: Bash script for installing and configuring HAproxy.
- `2-puppet_custom_http_response_header.pp`: Puppet manifest for setting the custom header on Nginx.

## Usage
Each script contains detailed comments on its purpose and usage. Ensure executable permissions are set before running.

## Configuration Details
- HAproxy uses a round-robin algorithm for load balancing.
- Nginx servers send a custom header `X-Served-By` to identify the responding server.

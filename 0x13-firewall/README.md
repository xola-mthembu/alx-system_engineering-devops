# 0x13. Firewall

## Project Overview

This project involves configuring a firewall on a web server to manage incoming traffic and set up port forwarding.

### Tasks

#### 0. Block all incoming traffic but

- **Description:** Configure `ufw` to block all incoming traffic except for TCP ports 22 (SSH), 443 (HTTPS), and 80 (HTTP).
- **File:** `0-block_all_incoming_traffic_but`

#### 1. Port forwarding

- **Description:** Configure `ufw` to forward port 8080/TCP to port 80/TCP.
- **File:** `100-port_forwarding`

### Installation and Usage

1. Navigate to the project directory:
    ```sh
    cd ~/alx-system_engineering-devops/0x13-firewall
    ```

2. Apply the firewall rules for task 0:
    ```sh
    sudo bash 0-block_all_incoming_traffic_but
    ```

3. Apply the firewall rules for task 1:
    ```sh
    sudo ufw reload
    ```

### Files

- `0-block_all_incoming_traffic_but`: Script to configure `ufw` to allow specific incoming traffic.
- `100-port_forwarding`: `ufw` configuration for port forwarding.

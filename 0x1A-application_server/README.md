# 0x1A. Application Server

## Description

This project involves setting up a web server infrastructure to serve dynamic content using Flask and Gunicorn, proxying requests with Nginx, and configuring systemd for process management. The setup will serve content from an AirBnB clone project.

## File Structure

- **web_flask/0-hello_route.py**: Flask application to serve the route `/airbnb-onepage/` on port 5000.
- **2-app_server-nginx_config**: Nginx configuration to serve the Flask application.
- **3-app_server-nginx_config**: Nginx configuration to serve a dynamic route with query parameters.
- **4-app_server-nginx_config**: Nginx configuration to serve the API from the AirBnB clone.
- **5-app_server-nginx_config**: Nginx configuration to serve the AirBnB clone web dynamic content.
- **gunicorn.service**: systemd service configuration for Gunicorn.
- **4-reload_gunicorn_no_downtime**: Bash script to reload Gunicorn gracefully.

## Technologies Used

- Python
- Flask
- Gunicorn
- Nginx
- systemd
- Bash

## Setup and Installation

### Prerequisites

- Ubuntu 16.04 LTS
- Python 3
- Git
- Net-tools

### Installation Steps

1. Install necessary packages:
    ```sh
    sudo apt-get update
    sudo apt-get install -y python3 python3-pip nginx net-tools
    ```

2. Clone the AirBnB clone project:
    ```sh
    git clone https://github.com/yourusername/AirBnB_clone_v2.git
    ```

3. Install Gunicorn:
    ```sh
    sudo pip3 install gunicorn
    ```

4. Copy the Nginx configuration files to `/etc/nginx/sites-available/` and create symbolic links in `/etc/nginx/sites-enabled/`:
    ```sh
    sudo cp 2-app_server-nginx_config /etc/nginx/sites-available/
    sudo ln -s /etc/nginx/sites-available/2-app_server-nginx_config /etc/nginx/sites-enabled/
    ```

5. Start and enable the Gunicorn systemd service:
    ```sh
    sudo cp gunicorn.service /etc/systemd/system/
    sudo systemctl start gunicorn
    sudo systemctl enable gunicorn
    ```

6. Reload Nginx:
    ```sh
    sudo systemctl reload nginx
    ```

## Usage

### Starting the Flask Application

1. Navigate to the project directory:
    ```sh
    cd AirBnB_clone_v2
    ```

2. Run the Flask application:
    ```sh
    python3 -m web_flask.0-hello_route
    ```

### Starting Gunicorn

1. Navigate to the project directory:
    ```sh
    cd AirBnB_clone_v2
    ```

2. Start Gunicorn:
    ```sh
    gunicorn --bind 0.0.0.0:5000 web_flask.0-hello_route:app
    ```

### Testing with curl

```sh
curl 127.0.0.1:5000/airbnb-onepage/

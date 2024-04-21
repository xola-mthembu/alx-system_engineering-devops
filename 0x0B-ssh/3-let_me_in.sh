#!/usr/bin/env bash
# This script adds a given public SSH key to the ubuntu user's authorized_keys

# Provided SSH public key
PUBLIC_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNdtrNGtTXe5Tp1EJQop8mOSAuRGLjJ6DW4PqX4wId/Kawz35ESampIqHSOTJmbQ8UlxdJuk0gAXKk3Ncle4safGYqM/VeDK3LN5iAJxf4kcaxNtS3eVxWBE5iF3FbIjOqwxw5Lf5sRa5yXxA8HfWidhbIG5TqKL922hPgsCGABIrXRlfZYeC0FEuPWdr6smOElSVvIXthRWp9cr685KdCI+COxlj1RdVsvIo+zunmLACF9PYdjB2s96Fn0ocD3c5SGLvDOFCyvDojSAOyE70ebIElnskKsDTGwfT4P6jh9OBzTyQEIS2jOaE5RQq4IB4DsMhvbjDSQrP0MdCLgwkN"

# Home directory of the ubuntu user
UBUNTU_HOME="/home/ubuntu"

# Ensure the .ssh directory exists in the ubuntu user's home
mkdir -p "$UBUNTU_HOME/.ssh"

# Set the permissions of the .ssh directory
chmod 700 "$UBUNTU_HOME/.ssh"

# Check if the authorized_keys file exists, create if not
AUTH_KEYS="$UBUNTU_HOME/.ssh/authorized_keys"
if [ ! -f "$AUTH_KEYS" ]; then
    touch "$AUTH_KEYS"
fi

# Set the permissions of the authorized_keys file
chmod 600 "$AUTH_KEYS"

# Add the public key to authorized_keys if not already added
if ! grep -q "$PUBLIC_KEY" "$AUTH_KEYS"; then
    echo "$PUBLIC_KEY" >> "$AUTH_KEYS"
    echo "Public key added successfully."
else
    echo "Public key already exists."
fi

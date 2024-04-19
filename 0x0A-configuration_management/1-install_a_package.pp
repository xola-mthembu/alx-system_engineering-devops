# This Puppet manifest ensures that both Flask 2.1.0 and a compatible
# version of Werkzeug are installed using pip3.

# Ensure pip3 is installed first
package { 'python3-pip':
  ensure => installed,
}

# Ensure a specific version of Werkzeug that is compatible with Flask 2.1.0
package { 'Werkzeug':
  ensure   => '1.0.1',
  provider => 'pip3',
}

# Install Flask 2.1.0
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

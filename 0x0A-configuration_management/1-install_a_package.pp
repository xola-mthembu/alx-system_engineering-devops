# File: 1-install_a_package.pp
# This manifest ensures that Flask 2.1.0 and a compatible version of Werkzeug are installed using pip3.

# Ensure python3-pip is installed first
package { 'python3-pip':
  ensure   => installed,
}

# Ensure a compatible version of Werkzeug is installed
package { 'Werkzeug':
  ensure   => '1.0.1',           # Ensure a compatible Werkzeug version
  provider => 'pip3',
  require  => Package['python3-pip'],
}

# Ensure Flask 2.1.0 is installed
package { 'Flask':
  ensure   => '2.1.0',           # Ensure Flask version 2.1.0 is installed
  provider => 'pip3',
  require  => [Package['python3-pip'], Package['Werkzeug']],
}


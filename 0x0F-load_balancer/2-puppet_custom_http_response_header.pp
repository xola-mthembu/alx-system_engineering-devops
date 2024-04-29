# Puppet manifest to automate the addition of a custom HTTP header in Nginx.

# Update system packages before installing Nginx.
exec { 'update_system_packages':
  provider => shell,
  command  => 'apt-get -y update',
  before   => Package['nginx'],
}

# Ensure Nginx is installed.
package { 'nginx':
  ensure  => installed,
  require => Exec['update_system_packages'],
}

# Add a custom HTTP header to the Nginx configuration file.
file_line { 'insert_custom_header':
  ensure  => present,
  path    => '/etc/nginx/sites-available/default',
  line    => "\tadd_header X-Served-By \"${hostname}\";",
  after   => 'server_name _;',
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Ensure the Nginx service is running.
service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}

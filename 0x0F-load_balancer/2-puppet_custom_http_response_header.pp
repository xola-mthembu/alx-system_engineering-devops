# Puppet manifest to automate adding a custom HTTP header in Nginx.

# Ensure the system is updated before installing Nginx.
exec { 'system_update':
  provider => shell,
  command  => 'apt-get -y update',
  path     => ['/bin', '/usr/bin'],
  before   => Package['nginx'],
}

# Install the Nginx package if it's not already installed.
package { 'nginx':
  ensure  => installed,
  require => Exec['system_update'],
}

# Ensure a custom HTTP header is added to the Nginx config.
file_line { 'add_custom_header':
  ensure  => present,
  path    => '/etc/nginx/sites-available/default',
  line    => "\tadd_header X-Served-By \"${facts['networking']['hostname']}\";",
  match   => '^\\tadd_header X-Served-By',
  after   => 'server_name _;',
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Ensure the Nginx service is running and enabled.
service { 'nginx':
  ensure    => running,
  enable    => true,
  require   => Package['nginx'],
  subscribe => File_line['add_custom_header'],
}

# Fix Apache 500 error by correcting Apache configuration and restarting service
exec { 'fix-wordpress':
  command => 'sed -i "s/AllowOverride None/AllowOverride All/" /etc/apache2/apache2.conf',
  path    => ['/usr/bin', '/usr/sbin', '/bin'],
  onlyif  => 'grep -q "AllowOverride None" /etc/apache2/apache2.conf',
}

service { 'apache2':
  ensure  => running,
  enable  => true,
  require => Exec['fix-wordpress'],
}

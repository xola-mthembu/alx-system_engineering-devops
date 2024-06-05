# Puppet manifest to fix 500 Internal Server Error in Apache

exec { 'fix-wordpress':
 command => '/usr/bin/sed -i "s/AllowOverride None/AllowOverride All/g" /etc/apache2/apache2.conf',
 path    => ['/bin', '/usr/bin'],
 onlyif  => '/usr/bin/grep -q "AllowOverride None" /etc/apache2/apache2.conf',
}

service { 'apache2':
 ensure => running,
 enable => true,
 require => Exec['fix-wordpress'],
}

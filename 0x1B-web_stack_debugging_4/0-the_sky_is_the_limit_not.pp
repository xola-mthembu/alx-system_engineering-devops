# This Puppet manifest configures Nginx to handle high traffic

exec { 'fix--for-nginx':
  command => '/etc/init.d/nginx restart',
}

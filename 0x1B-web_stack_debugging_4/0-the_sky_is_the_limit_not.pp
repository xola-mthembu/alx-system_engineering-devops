# Modify ULIMIT for the default file descriptor
exec { 'adjust-ulimit-for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin:/bin'
}

# Restart the Nginx service
exec { 'reload-nginx-service':
  command => '/etc/init.d/nginx restart',
  path    => '/usr/local/bin:/bin'
}

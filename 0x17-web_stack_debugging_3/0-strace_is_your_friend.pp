# Correct Apache 500 error by updating permissions for wp-settings.php file
exec { 'adjust-wordpress':
  command => 'sed -i "s/phpp/php/" /var/www/html/wp-settings.php',
  path    => ['/usr/bin', '/usr/sbin', '/bin'],
}

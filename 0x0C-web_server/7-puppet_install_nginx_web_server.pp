# Puppet manifest to install and configure Nginx with a custom 404 page and redirection

class nginx_setup {
  package { 'nginx':
    ensure => installed,
  }

  file { '/var/www/html/index.html':
    ensure  => file,
    content => 'Hello World!',
    require => Package['nginx'],
  }

  file { '/etc/nginx/sites-available/default':
    ensure  => file,
    content => template('nginx/default.erb'),
    require => Package['nginx'],
    notify  => Service['nginx'],
  }

  file { '/etc/nginx/sites-available/redirect':
    ensure  => file,
    content => 'server { listen 80; server_name _; location /redirect_me { return 301 https://www.example.com; } }',
    require => Package['nginx'],
    notify  => Service['nginx'],
  }

  service { 'nginx':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/nginx/sites-available/default', '/etc/nginx/sites-available/redirect'],
  }
}

include nginx_setup

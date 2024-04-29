# Puppet manifest to configure Nginx with a custom HTTP header
class nginx_custom_header {
    package { 'nginx':
        ensure => installed,
    }

    file { '/etc/nginx/sites-available/default':
        ensure  => file,
        content => template("modulename/nginx_default.erb"),
        require => Package['nginx'],
        notify  => Service['nginx'],
    }

    service { 'nginx':
        ensure => running,
        enable => true,
        require => File['/etc/nginx/sites-available/default'],
    }
}

include nginx_custom_header

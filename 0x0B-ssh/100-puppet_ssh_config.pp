# Puppet manifest to configure SSH client settings

file_line { 'Declare identity file':
  path    => '/home/vagrant/.ssh/config',
  line    => 'IdentityFile ~/.ssh/school',
  match   => '^IdentityFile',
  replace => true,
}

file_line { 'Turn off passwd auth':
  path    => '/home/vagrant/.ssh/config',
  line    => 'PasswordAuthentication no',
  match   => '^PasswordAuthentication',
  ensure  => 'present',
  replace => true,
}

file { '/home/vagrant/.ssh/config':
  ensure => file,
  owner  => 'vagrant',
  group  => 'vagrant',
  mode   => '0600',
  require => File_line['Declare identity file', 'Turn off passwd auth'],
}

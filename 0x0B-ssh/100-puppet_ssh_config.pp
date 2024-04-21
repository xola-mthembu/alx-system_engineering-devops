# Puppet manifest to configure SSH client to use a private key and disable password authentication

file_line { 'Declare identity file':
  ensure  => present,
  path    => '/home/vagrant/.ssh/config',
  line    => '    IdentityFile /home/vagrant/.ssh/school',
  match   => '^    IdentityFile',
  replace => true,
}

file_line { 'Turn off passwd auth':
  ensure  => present,
  path    => '/home/vagrant/.ssh/config',
  line    => '    PasswordAuthentication no',
  match   => '^    PasswordAuthentication',
  replace => true,
}

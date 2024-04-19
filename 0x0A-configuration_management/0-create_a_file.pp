# This manifest ensures that a file /tmp/school exists
# with specified properties like permissions, owner, and group.
file { '/tmp/school':
  ensure  => 'file',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0744',
  content => "I love Puppet\n",
}

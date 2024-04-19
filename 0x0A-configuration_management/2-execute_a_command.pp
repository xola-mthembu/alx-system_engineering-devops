# Using Puppet, create a manifest that kills a process named killmenow
exec { 'killmenow':
  command => 'pkill killmenow || true',
  path    => '/usr/bin:/usr/sbin:/bin',
}

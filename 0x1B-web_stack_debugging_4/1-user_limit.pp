# This Puppet manifest changes OS configuration to fix user limit issues

exec { 'change-os-configuration-for-holberton-user':
  command => 'ulimit -n 4096',
}

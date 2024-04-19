# This manifest uses the exec resource to kill a process named 'killmenow'

exec { 'kill_killmenow_process':
  command => '/usr/bin/pkill -f killmenow',
  path    => '/usr/bin:/usr/sbin:/bin',  # Ensure pkill is in the exec path
  onlyif  => "/usr/bin/pgrep -f killmenow",  # Only run if the process is found
}

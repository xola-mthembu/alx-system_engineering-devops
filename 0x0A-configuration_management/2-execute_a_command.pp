# File: kill_process.pp
# This manifest ensures that a process named 'killmenow' is not running
# by checking for its presence and killing it if found.

exec { 'kill_killmenow_process':
  command     => 'pkill -f killmenow',
  path        => '/usr/bin:/usr/sbin:/bin',
  onlyif      => "pgrep -f killmenow",
  provider    => shell,
  logoutput   => true,
}


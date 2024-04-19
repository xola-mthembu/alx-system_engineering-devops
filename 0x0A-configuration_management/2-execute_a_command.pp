# File: kill_process.pp
# This Puppet manifest ensures that any process named 'killmenow' is terminated.
# It uses the 'pkill' command, which is idempotent in its nature as it will not
# produce an error if no processes are found that match the name.

exec { 'kill_killmenow_process':
  command     => 'pkill -f killmenow || :',  # The '-f' flag matches against the complete command line
  path        => '/usr/bin:/usr/sbin:/bin',
  refreshonly => true,  # Ensures the command runs only when notified by another resource
}

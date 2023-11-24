#  Initialize that kills a process named killmenow.
exec { 'killmenow':
  command => 'pkill killmenow || true',
  path    => '/usr/bin/',
  onlyif  => 'test "$(pkill -f killmenow; echo $?)" -eq 0',
}

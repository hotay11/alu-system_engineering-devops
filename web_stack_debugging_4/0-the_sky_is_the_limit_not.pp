# Raises the open file limit so Nginx can handle more concurrent requests
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => ['/bin', '/usr/bin'],
}

exec { 'restart-nginx':
  command => 'service nginx restart',
  path    => ['/bin', '/usr/bin', '/usr/sbin'],
  require => Exec['fix--for-nginx'],
}

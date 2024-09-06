# modify nginx setting to accept more request

exec {'modify max open files limit setting':
  command => 'sed -i "s/15/9999/" /etc/default/nginx && sudo service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games',
}

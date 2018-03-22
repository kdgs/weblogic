class profile::base_users_oracle {
  group { 'oinstall':
    ensure => present,
    gid    => 620,
  }
  user{ 'oracle',:
    ensure     => present,
    gid        => 620,
    managehome => true,
  }
}

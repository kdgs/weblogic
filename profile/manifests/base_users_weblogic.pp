class profile::base_users_oracle {
  group { 'weblogic':
    ensure => present,
    gid    => 610,
  }
  user{ 'weblogic',:
    ensure     => present,
    gid        => 610,
    managehome => true,
  }
  user{ 'wladmin',:
    ensure     => present,
    gid        => 611,
    managehome => true,
  }

}

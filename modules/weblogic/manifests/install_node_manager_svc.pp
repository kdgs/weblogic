#==#
#  #
#==#
class weblogic::install_node_manager_svc {
  #chmod +x /etc/init.d/startNodeDaemon
  file { '/etc/init.d/startNodeManagerDaemon.sh':
    source  => 'puppet:///modules/startNodeManagerDaemon.sh',
    replace => false,
    mode    => '0111',
  }
  exec { 'chkconfig −−add startNodeDaemon':
    path    => ['/usr/bin', '/usr/sbin',],
  }
  exec { 'chkconfig −−level 345 startNodeDaemon on':
    path    => ['/usr/bin', '/usr/sbin',],
  }
}

#==#
#  #
#==#
class weblogic::install_node_manager_svc {
  notify { 'msg-install-node-manager':
    message => "====>\tIniciando configuração do nodeManagerDaemon",
  }
  #chmod +x /etc/init.d/startNodeDaemon
  #file { '/etc/init.d/startnodemanagerdaemon.sh':
  file { '/workspace/teste.sh':
    source  => 'puppet:///modules/weblogic/startnotemanagerdaemon.sh',
    replace => false,
    mode    => '0111',
  }
  #exec { 'chkconfig −−add startNodeDaemon':
  #  path    => ['/usr/bin', '/usr/sbin',],
  #}
  #exec { 'chkconfig −−level 345 startNodeDaemon on':
  #  path    => ['/usr/bin', '/usr/sbin',],
  #}
}

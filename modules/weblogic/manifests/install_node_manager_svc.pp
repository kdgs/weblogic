#==#
#  #
#==#
class weblogic::install_node_manager_svc {
  class weblogic::install_java {
    notify { 'msg-install-node-manager':
      message => "====>\tIniciando configuração do nodeManagerDaemon",
  }
  #chmod +x /etc/init.d/startNodeDaemon
  #file { '/etc/init.d/startNodeManagerDaemon.sh':
  file { '/workspace/teste.sh':
    source  => 'puppet:///startNodeManagerDaemon.sh',
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

#Classe de definição de parametros utilizados pelo modulo params.pp

class weblogic::params {

  $weblogic_group         = 'weblogic'
  $weblogic_group_gid     = '600'
  $weblogic_user          = 'weblogic'
  $weblogic_priv          = '644'
  $weblogic_inventory_loc = '/var/Oracle'
  $weblogic_wls_rsp       = '/var/Oracle/install/wls.rsp'
  $oracle_user            = 'oracle'
  $oracle_group           = 'oinstall'
  $oracle_group_gid     = '610'
  $oracle_inst_loc        = '/var/Oracle/install/oraInst.loc'
  $oracle_dir             = '/var/Oracle'
  $oracle_home            = '/var/Oracle/Middleware1212'
  $install_type           = 'Weblogic Server'
  $oracle_support_usr     = ''
  $oracle_support_pwd     = ''
  $oracle_sec_uptd        = false
  $oracle_updt_myoracle   = false
  $opt_dir                = '/opt/Oracle/'
  $jdk_version            = ''
  $proxy_host             = ''
  $proxy_port             = ''
  $proxy_user             = 'teste'
  $proxy_pwd              = ''
  $collector_suphub_url   = ''

  ## -- Variaveis de Ambiente -- ##
  $java_env_path          = '/opt/Oracle/java'
  $mw_env_path            = '/opt/Oracle/Middleware1213'
  $wl_log_env_path        = '/var/log/wl/'
  $domains_env_path       = '/var/weblogic/domains/'
}

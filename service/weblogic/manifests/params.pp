#====================================================================#
# Classe de definição de parametros utilizados pelo modulo Weblogic  #
#====================================================================#
class weblogic::params {

  $weblogic_group         = 'weblogic'
  $weblogic_group_gid     = '600'
  $weblogic_user          = 'weblogic'
  $weblogic_priv          = '644'
  $weblogic_inventory_loc = '/var/Oracle'
  $weblogic_jar_file      = ''
  $weblogic_wls_rsp       = '/var/Oracle/install/wls.rsp'
  $oracle_user            = 'oracle'
  $oracle_group           = 'oinstall'
  $oracle_group_gid     = '610'
  $oracle_inst_loc        = '/var/Oracle/install/oraInst.loc'
  $oracle_dir             = '/var/Oracle'
  $oracle_home            = '/var/Oracle/Middleware'
  $oracle_mw_version      = '1212'
  $install_type           = 'Weblogic Server'
  $oracle_support_usr     = ''
  $oracle_support_pwd     = ''
  $oracle_sec_uptd        = false
  $oracle_updt_myoracle   = false
  $opt_dir                = '/opt/Oracle'
  $jdk_version            = '1.8.2'
  $proxy_host             = ''
  $proxy_port             = ''
  $proxy_user             = 'teste'
  $proxy_pwd              = ''
  $collector_suphub_url   = ''

  ## -- Variaveis de Ambiente -- ##
  $java_env_path          = '/opt/Oracle/java'
  $mw_env_path            = "${oracle_home}${oracle_mw_version}"
  $wl_log_env_path        = '/var/log/wl/'
  $wl_var_path            = '/var/weblogic'
  $domains_env_path       = '/var/weblogic/domains/'
  $domains_env_tunning    = '-Djava.security.egd=file:/dev/./urandom'

  ## -- Variaveis do Script createDomain.py -- ##
  $script_wlhome          = ''
  $script_domain_name      = ''
  $script_domain_path      = ''
  $script_listen_adr       = ''
  $script_listen_port      = ''
  $script_user            = ''
  $script_pwd             = ''
}

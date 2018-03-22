#====================================================================#
# Classe de instalação weblogic                                      #
#====================================================================#

class weblogic::install_weblogic inherits weblogic {

  exec { 'java':
    command => "${weblogic::java_env_path}/java -d64 -jar ${weblogic::weblogic_jar_file} -silent -response ${weblogic::weblogic_wls_rsp} -invPtrLoc ${weblogic::oracle_inst_loc}",
    path    => "/usr/local/bin/:/bin/:${weblogic::java_home}/bin",
  }

}

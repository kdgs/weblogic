#Classe de instalação weblogic
class weblogic::install_weblogic inherits weblogic {

  exec { 'java':
    command => "java -d64 -jar wls_121200.jar -silent -response ${weblogic::weblogic_wls_rsp} -invPtrLoc ${weblogic::oracle_inst_loc}",
    path    => "/usr/local/bin/:/bin/:${weblogic::java_home}/bin",
  }

}

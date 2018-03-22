#
class weblogic {
  notify { 'msg-weblogic':
    message => "====>\tIniciando modulo Weblogic",
  }
  include weblogic::base_users_oracle
  include weblogic::base_users_weblogic
  include weblogic::install_env_vars
  include weblogic::install_java
  include weblogic::tunning_weblogic
}

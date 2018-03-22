class profile::install_env_vars{
  file { "/home/oracle/.bashrc":
    content => inline_template(''\nJAVA_HOME=/opt/Oracle/java',
                                '\nMW=/opt/Oracle/Middleware1213',
                                '\nWL_LOG=/var/log/wl/'',
                                '\nDOMAINS=/var/weblogic/domains/',
                                '\nPATH=\$JAVA_HOME/bin:\$PATH:\$HOME/bin\n")
  }
}

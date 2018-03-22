#!/bin/bash
# chkconfig: 345 96 4
su - oracle -c "cd /var/weblogic/domains/meuDomain/bin; nohup ./startNodeManager.sh &"

#!/bin/sh
systemctl start rpcbind
ganesha.nfsd -F -L /var/log/ganesha.log -f /vfs.conf
#!/bin/bash
service apache2 start
/usr/bin/hhvm --mode server -vServer.Type=fastcgi -vServer.Port=9000 
#/usr/sbin/apache2ctl -D FOREGROUND

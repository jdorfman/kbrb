#!/usr/local/bin/bash
CONTENT_PATH=/usr/local/foo
NAS_PATH=/mnt/nas
LOG_PATH=/var/log
EMAIL=you@domain.com
LOGNAME=kbrb-log

/usr/local/bin/rsync -avz $CONTENT_PATH/* $NAS_PATH/ > $LOG_PATH/$LOGNAME.log

mail -s 'Foo Back Up Stats' $EMAIL < $LOG_PATH/$LOGNAME.log

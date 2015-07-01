BACKUPNAME="mongodump-$HOST-$PORT-$(date +%Y-%m-%d-%H-%M)"
BACKUPDIR=/tmp/$BACKUPNAME
BACKUPFILE=/tmp/$BACKUPNAME.tar.gz

mongodump --host $HOST --port $PORT --db $DBNAME --username $USERNAME --password $PASSWORD --out $BACKUPDIR
tar -cvzf $BACKUPFILE $BACKUPDIR
aws s3 cp $BACKUPFILE s3://mms3backupbucket/mongodb/

rm $BACKUPFILE
rm -R $BACKUPDIR

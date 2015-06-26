# docker-mm-mongobackup
Generic container to do a mongobackup and upload to s3

Environment variables that need to be set:
-HOST
-PORT
-DBNAME
-USERNAME
-PASSWORD


Run with the command:
docker run -e HOST=localhost -e PORT=27017 -e DBNAME=myDb -e USERNAME=test -e PASSWORD=test -t rsmith/docker-mm-mongobackup
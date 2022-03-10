#!/bin/sh


# funciona somente qdo o dump esta no formato .dump
USERNAME="postgres"
PASSWORD="postgres"
DBNAME="teste"
FILE_NAME="docente10032022.sql"

#COMMAND="PGPASSWORD=${PASSWORD} pg_restore -U ${USERNAME} -d ${DBAME} -1 ${FILE_NAME}"
#eval $COMMAND

#COMMAND="PGPASSWORD=${PASSWORD} sudo -u ${USERNAME} psql -U ${USERNAME} -d ${DBAME} -1 ${FILE_NAME}"
#eval $COMMAND

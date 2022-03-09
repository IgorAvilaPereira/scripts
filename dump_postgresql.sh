#!/bin/sh

USERNAME="postgres"
PASSWORD="postgres"
HOST="localhost"
PORT="5432"
DBNAME="teste"
FILE_NAME="teste.sql"

COMMAND="PGPASSWORD=${PASSWORD} pg_dump --host ${HOST} --port ${PORT} --username ${USERNAME} --format plain --create --clean --inserts --verbose --file ${FILE_NAME} ${DBNAME}"
eval $COMMAND
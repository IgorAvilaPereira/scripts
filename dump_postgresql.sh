#!/bin/sh

#USERNAME="postgres"
#PASSWORD="postgres"
#HOST="localhost"
#PORT="5432"
#DBNAME="teste"
#FILE_NAME="teste.sql"
#
#COMMAND="PGPASSWORD=${PASSWORD} pg_dump --host ${HOST} --port ${PORT} --username ${USERNAME} --format plain --create --clean --inserts --verbose --file ${FILE_NAME} ${DBNAME}"
#eval $COMMAND

#!/bin/bash

# --- ENTRADAS VIA ZENITY ---

DBNAME=$(zenity --entry --title="PostgreSQL" --text="Nome do banco:")
[ -z "$DBNAME" ] && exit 1

USERNAME=$(zenity --entry --title="PostgreSQL" --text="Usuário:")
[ -z "$USERNAME" ] && exit 1

PASSWORD=$(zenity --password --title="PostgreSQL")
[ -z "$PASSWORD" ] && exit 1

HOST=$(zenity --entry --title="PostgreSQL" --text="Host:" --entry-text="localhost")
[ -z "$HOST" ] && exit 1

PORT=$(zenity --entry --title="PostgreSQL" --text="Porta:" --entry-text="5432")
[ -z "$PORT" ] && exit 1

FILE_NAME=$(zenity --file-selection \
    --save \
    --confirm-overwrite \
    --title="Salvar backup como..." \
    --filename="${DBNAME}.sql")

[ -z "$FILE_NAME" ] && exit 1

# --- EXECUÇÃO ---

(
    echo "10"
    echo "# Iniciando backup..."

    OUTPUT=$(PGPASSWORD="$PASSWORD" pg_dump \
        --host "$HOST" \
        --port "$PORT" \
        --username "$USERNAME" \
        --format plain \
        --create \
        --clean \
        --inserts \
        --verbose \
        --file "$FILE_NAME" \
        "$DBNAME" 2>&1)

    echo "100"
) | zenity --progress \
    --title="Backup PostgreSQL" \
    --text="Executando dump..." \
    --percentage=0 \
    --auto-close

# --- RESULTADO ---

zenity --info \
    --title="Concluído" \
    --text="Backup salvo em:\n$FILE_NAME"

# opcional: log no terminal
echo "$OUTPUT"

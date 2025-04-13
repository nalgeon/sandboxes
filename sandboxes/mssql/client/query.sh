#!/bin/sh
set -e

input=$(cat main.sql)
/opt/mssql-tools18/bin/sqlcmd -C -S mssql -U "$1" -P "$CODAPI_PASSWORD" -d "$1" -Q "$input"

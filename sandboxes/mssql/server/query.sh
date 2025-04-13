#!/bin/bash
set -e

input=$(cat)
/opt/mssql-tools/bin/sqlcmd -U "$1" -P "$CODAPI_PASSWORD" -d "$1" -Q "$input"

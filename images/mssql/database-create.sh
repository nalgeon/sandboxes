#!/bin/bash

# create database
/opt/mssql-tools/bin/sqlcmd -U sa -P "$MSSQL_SA_PASSWORD" -Q "create database $1;"

# create user and grant database access
read -r -d '' QUERY << EOF
use $1;
create login $1 with password = '$CODAPI_PASSWORD';
create user $1 for login $1;
grant control on database::$1 to $1;
EOF

/opt/mssql-tools/bin/sqlcmd -U sa -P "$MSSQL_SA_PASSWORD" -d "$1" -Q "$QUERY"

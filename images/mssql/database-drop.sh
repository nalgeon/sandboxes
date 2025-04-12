#!/bin/bash

# drop database and user
read -r -d '' QUERY << EOF
drop database codapi_01;
drop login codapi_01;
EOF

/opt/mssql-tools/bin/sqlcmd -U sa -P "$MSSQL_SA_PASSWORD" -Q "$QUERY"

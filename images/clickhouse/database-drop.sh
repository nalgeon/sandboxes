#!/bin/sh

clickhouse-client --multiquery <<EOF
drop database $1;
drop user $1;
EOF

#!/bin/sh

clickhouse-client --multiquery <<EOF
create user $1 not identified settings profile codapi;
create database $1;
grant show, select, insert, alter, create, drop, truncate on $1.* to $1;
EOF

#!/bin/sh

mariadb <<EOF
create user $1;
create database $1;
grant alter, create, delete, drop, insert, references, select, update on $1.* to $1;
EOF

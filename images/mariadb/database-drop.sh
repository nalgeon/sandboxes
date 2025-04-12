#!/bin/sh

mariadb <<EOF
drop database $1;
drop user $1;
EOF

#!/bin/bash
set -e

input=$(cat main.js)
mongosh --quiet --eval "$input" "mongodb://mongodb/$1"

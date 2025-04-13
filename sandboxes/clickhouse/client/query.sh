#!/bin/bash
set -e

# Read the input value from stdin and replace ';\n' with 'Ø'
input=$(cat | sed ':a;N;$!ba;s/;\n/Ø/g' | sed ':a;N;$!ba;s/\n/ /g')

# Split the value into lines using 'Ø' as the separator
IFS='Ø' read -ra lines <<< "$input"

# Iterate over the lines and run each one
for line in "${lines[@]}"; do
  clickhouse-client --host clickhouse --user=$1 --database=$1 --format PrettyCompactNoEscapes --output_format_pretty_row_numbers=0 --multiquery --query "$line"
done

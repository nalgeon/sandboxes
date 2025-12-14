import chdb

query_sql = """
select 'Hello, World!' as message
settings output_format_pretty_row_numbers = 0
"""

res = chdb.query(query_sql, "PrettyCompactNoEscapes")
print(res, end="")

import sys
from pathlib import Path
from chdb.session import Session


def main(path):
    queries = read_queries(path)
    if not queries:
        return
    results = run_queries(queries)
    if not results:
        return
    sys.stdout.write("\n".join(results))


def read_queries(path):
    src = Path(path).read_text()
    queries = src.split(";\n")
    queries = [f"{q};" for q in queries if q]
    return queries


def run_queries(queries):
    results = []
    session = Session()
    session.query("create database tmp;")
    session.query("use tmp;")
    for query in queries:
        res = session.query(query, "PrettyCompactNoEscapes")
        results.append(res)
    return [result_to_str(res) for res in results if res]


def result_to_str(result):
    lines = []
    for line in str(result).splitlines():
        lines.append(line.lstrip(" 0123456789."))
    return "\n".join(lines)


main(sys.argv[1])

# Code sandboxes

This repository contains sandboxes for [Codapi](https://github.com/nalgeon/codapi), a tool for embedding interactive code snippets in documentation and websites.

To use a particular sandbox, [install Codapi](https://github.com/nalgeon/codapi/blob/main/docs/install.md) and [add the sandbox](https://github.com/nalgeon/codapi/blob/main/docs/add-sandbox.md).

See the available sandboxes below, or [try them out](https://codapi.org/#sandboxes).

## What is a sandbox

Sandbox = image + box + commands:

-   _Image_ as a Docker image containing specific software, like a compiler or a database engine.
-   _Box_ is a configuration for running a container: cpu and memory restrictions, file systems, etc.
-   _Commands_ are predefined actions you can run in a container.

You can use sandboxes from this repository or create your own. See the [documentation](https://github.com/nalgeon/codapi/blob/main/docs/add-sandbox.md) for details.

## Programming languages

-   [Bash/Zsh](sandboxes/shell)
-   [C](sandboxes/gcc)
-   [C#](sandboxes/dotne/)
-   [C++](sandboxes/cpp)
-   [Elixir](sandboxes/elixir)
-   [Go](sandboxes/go)
-   [Java](sandboxes/java)
-   [JavaScript](sandboxes/typescript)
-   [Kotlin](sandboxes/kotlin)
-   [Lua](sandboxes/lua)
-   [Odin](sandboxes/odin)
-   [PHP](sandboxes/php)
-   [Python](sandboxes/python)
-   [R](sandboxes/rlang)
-   [Raku](sandboxes/raku)
-   [Ruby](sandboxes/ruby)
-   [Rust](sandboxes/rust)
-   [TypeScript](sandboxes/typescript)
-   [V](sandboxes/vlang)
-   [Zig](sandboxes/zig)

## Databases

Client-server databases like MySQL typically use two images: a server and a client. Start the server with `make` (e.g., `make mysql-start`). Codapi automatically runs the client for each request, so you don't need to worry about it.

-   [chDB](sandboxes/chdb)
-   [ClickHouse](sandboxes/clickhouse)
-   [DuckDB](sandboxes/duckdb)
-   [MariaDB](sandboxes/mariadb)
-   [MongoDB](sandboxes/mongodb)
-   [MySQL](sandboxes/mysql)
-   [PostgreSQL](sandboxes/postgres)
-   [SQL Server](sandboxes/mssql)
-   [SQLite](sandboxes/sqlite)

Servers:

```sh
make clickhouse-start
make mariadb-start
make mongodb-start
make mssql-start
make mysql-start
make postgres-start
```

## Network & tools

-   [Caddy](sandboxes/caddy)
-   [Curl](sandboxes/shell)
-   [Git](sandboxes/shell)
-   [Network tools](sandboxes/net-tools)
-   [Ripgrep](sandboxes/shell)

## Contributing

Contributions are welcome. For anything other than bugfixes, please first open an issue to discuss what you want to change.

## Support

Codapi is mostly a [one-man](https://antonz.org/) project, not backed by a VC fund or anything.

If you find Codapi useful, please star it on GitHub and spread the word among your peers. It really helps to move the project forward.

★ [Subscribe](https://antonz.org/subscribe/) to stay on top of new features.

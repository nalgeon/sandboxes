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

-   Bash/Zsh: [image](images/shell/) • [box](configs/boxes/shell.json) • [commands](configs/commands/shell.json)
-   C: [image](images/gcc/) • [box](configs/boxes/gcc.json) • [commands](configs/commands/gcc.json)
-   C#: [image](images/dotnet/) • [box](configs/boxes/dotnet.json) • [commands](configs/commands/dotnet.json)
-   C++: [image](images/cpp/) • [box](configs/boxes/cpp.json) • [commands](configs/commands/cpp.json)
-   Elixir: [image](images/elixir/) • [box](configs/boxes/elixir.json) • [commands](configs/commands/elixir.json)
-   Go: [image](images/go/) • [box](configs/boxes/go.json) • [commands](configs/commands/go.json)
-   Java: [image](images/java/) • [box](configs/boxes/java.json) • [commands](configs/commands/java.json)
-   JavaScript: [image](images/typescript/) • [box](configs/boxes/typescript.json) • [commands](configs/commands/javascript.json)
-   Kotlin: [image](images/kotlin/) • [box](configs/boxes/kotlin.json) • [commands](configs/commands/kotlin.json)
-   Lua: [image](images/lua/) • [box](configs/boxes/lua.json) • [commands](configs/commands/lua.json)
-   Odin: [image](images/odin/) • [box](configs/boxes/odin.json) • [commands](configs/commands/odin.json)
-   PHP: [image](images/php/) • [box](configs/boxes/php.json) • [commands](configs/commands/php.json)
-   Python: [image](images/python/) • [box](configs/boxes/python.json) • [commands](configs/commands/python.json)
-   R: [image](images/rlang/) • [box](configs/boxes/rlang.json) • [commands](configs/commands/rlang.json)
-   Raku: [image](images/raku/) • [box](configs/boxes/raku.json) • [commands](configs/commands/raku.json)
-   Ruby: [image](images/ruby/) • [box](configs/boxes/ruby.json) • [commands](configs/commands/ruby.json)
-   Rust: [image](images/rust/) • [box](configs/boxes/rust.json) • [commands](configs/commands/rust.json)
-   TypeScript: [image](images/typescript/) • [box](configs/boxes/typescript.json) • [commands](configs/commands/typescript.json)
-   V: [image](images/vlang/) • [box](configs/boxes/vlang.json) • [commands](configs/commands/vlang.json)
-   Zig: [image](images/zig/) • [box](configs/boxes/zig.json) • [commands](configs/commands/zig.json)

## Databases

Client-server databases like MySQL typically use two images: a server and a client. Start the server with `make` (e.g., `make mysql-start`). Codapi automatically runs the client for each request, so you don't need to worry about it.

-   chDB: [image](images/chdb/) • [box](configs/boxes/chdb.json) • [commands](configs/commands/chdb.json)
-   ClickHouse: [server](images/clickhouse/) • [client](images/clickhouse-client/) • [box](configs/boxes/clickhouse-client.json) • [commands](configs/commands/clickhouse.json)
-   DuckDB: [image](images/duckdb/) • [box](configs/boxes/duckdb.json) • [commands](configs/commands/duckdb.json)
-   MariaDB: [server](images/mariadb/) • [client](images/mariadb-client/) • [box](configs/boxes/mariadb-client.json) • [commands](configs/commands/mariadb.json)
-   MongoDB: [server](images/mongodb/) • [client](images/mongodb-client/) • [box](configs/boxes/mongodb-client.json) • [commands](configs/commands/mongodb.json)
-   MySQL: [server](images/mysql/) • [client](images/mysql-client/) • [box](configs/boxes/mysql-client.json) • [commands](configs/commands/mysql.json)
-   PostgreSQL: [image](images/postgres/) • [commands](configs/commands/postgres.json)
-   SQL Server: [server](images/mssql/) • [client](images/mssql-client/) • [box](configs/boxes/mssql-client.json) • [commands](configs/commands/mssql.json)
-   SQLite: [image](images/sqlite/) • [box](configs/boxes/sqlite.json) • [commands](configs/commands/sqlite.json)

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

-   Caddy: [image](images/caddy/) • [box](configs/boxes/caddy.json) • [commands](configs/commands/caddy.json)
-   Curl: [image](images/shell/) • [box](configs/boxes/shell.json) • [commands](configs/commands/shell.json)
-   Git: [image](images/shell/) • [box](configs/boxes/shell.json) • [commands](configs/commands/shell.json)
-   Network tools: [image](images/net-tools/) • [box](configs/boxes/net-tools.json) • [commands](configs/commands/net-tools.json)
-   Ripgrep: [image](images/shell/) • [box](configs/boxes/shell.json) • [commands](configs/commands/shell.json)

## Contributing

Contributions are welcome. For anything other than bugfixes, please first open an issue to discuss what you want to change.

## Support

Codapi is mostly a [one-man](https://antonz.org/) project, not backed by a VC fund or anything.

If you find Codapi useful, please star it on GitHub and spread the word among your peers. It really helps to move the project forward.

★ [Subscribe](https://antonz.org/subscribe/) to stay on top of new features.

# Sandboxes

This repository contains sandboxes for [Codapi](https://github.com/nalgeon/codapi), a tool for trying programming languages, databases and other software in an isolated environment.

To use a particular sandbox:

1. [Install Codapi](https://github.com/nalgeon/codapi#installation)
2. Add a sandbox by its name with `./codapi-cli sandbox add <name>`, e.g:

```sh
./codapi-cli sandbox add lua
./codapi-cli sandbox add go
./codapi-cli sandbox add mariadb
```

3. Restart the Codapi server.

See the available sandboxes below, or [try them out](https://codapi.org/#sandboxes).

## What is a sandbox

Sandbox = image + box + commands:

-   _Image_ as a Docker image containing specific software, like a compiler or a database engine.
-   _Box_ is a configuration for running a container: cpu and memory restrictions, file systems, etc.
-   _Commands_ are predefined actions you can run in a container.

You can use sandboxes from this repository or [create your own](https://github.com/nalgeon/codapi/blob/main/docs/add-sandbox.md).

## Programming languages

| Name         | Sandbox                            |
| ------------ | ---------------------------------- |
| `shell`      | [Bash/Zsh](sandboxes/shell)        |
| `gcc`        | [C](sandboxes/gcc)                 |
| `dotnet`     | [C#](sandboxes/dotnet/)            |
| `cpp`        | [C++](sandboxes/cpp)               |
| `elixir`     | [Elixir](sandboxes/elixir)         |
| `go`         | [Go](sandboxes/go)                 |
| `java`       | [Java](sandboxes/java)             |
| `typescript` | [JavaScript](sandboxes/typescript) |
| `kotlin`     | [Kotlin](sandboxes/kotlin)         |
| `lua`        | [Lua](sandboxes/lua)               |
| `odin`       | [Odin](sandboxes/odin)             |
| `php`        | [PHP](sandboxes/php)               |
| `python`     | [Python](sandboxes/python)         |
| `rlang`      | [R](sandboxes/rlang)               |
| `raku`       | [Raku](sandboxes/raku)             |
| `ruby`       | [Ruby](sandboxes/ruby)             |
| `rust`       | [Rust](sandboxes/rust)             |
| `typescript` | [TypeScript](sandboxes/typescript) |
| `vlang`      | [V](sandboxes/vlang)               |
| `zig`        | [Zig](sandboxes/zig)               |

## Databases

Client-server databases like MySQL typically use two images: a server and a client:

-   The server container is started when you add a sandbox using `codapi-cli`.
-   The client container is created by the Codapi server on each request.

| Name         | Sandbox                            |
| ------------ | ---------------------------------- |
| `chdb`       | [chDB](sandboxes/chdb)             |
| `clickhouse` | [ClickHouse](sandboxes/clickhouse) |
| `duckdb`     | [DuckDB](sandboxes/duckdb)         |
| `mariadb`    | [MariaDB](sandboxes/mariadb)       |
| `mongodb`    | [MongoDB](sandboxes/mongodb)       |
| `mssql`      | [SQL Server](sandboxes/mssql)      |
| `mysql`      | [MySQL](sandboxes/mysql)           |
| `postgres`   | [PostgreSQL](sandboxes/postgres)   |
| `redis`      | [Redis](sandboxes/redis)           |
| `redka`      | [Redka](sandboxes/redka)           |
| `sqlite`     | [SQLite](sandboxes/sqlite)         |

## Network & tools

| Name        | Sandbox                                                                 |
| ----------- | ----------------------------------------------------------------------- |
| `caddy`     | [Caddy](sandboxes/caddy)                                                |
| `latex`     | [LaTeX](sandboxes/latex) by [Patricio Díaz](https://github.com/padiazg) |
| `net-tools` | [Network tools](sandboxes/net-tools)                                    |

## Contributing

Contributions are welcome. For anything other than bugfixes, please first open an issue to discuss what you want to change.

## Support

Codapi is mostly a [one-man](https://antonz.org/) project, not backed by a VC fund or anything.

If you find Codapi useful, please star it on GitHub and spread the word among your peers. It really helps to move the project forward.

★ [Subscribe](https://antonz.org/subscribe/) to stay on top of new features.

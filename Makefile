# Helper tasks for Codapi sandboxes.

# Creates a sandbox package which can be installed using the Codapi CLI.
.PHONY: sandbox
sandbox:
	@[ -n "$(name)" ] || (echo "Syntax: make sandbox name=<sandbox-name>" >&2; exit 1)
	@echo "Packing $(name) sandbox"
	@mkdir -p build
	@rm -f build/$(name).zip
	@tar -cvzf build/$(name).tar.gz -C sandboxes $(name)
	@echo "✓ build/$(name).tar.gz"

# Creates packages for all sandboxes.
.PHONY: sandboxes
sandboxes:
	make sandbox name=ash
	make sandbox name=caddy
	make sandbox name=chdb
	make sandbox name=clickhouse
	make sandbox name=cpp
	make sandbox name=debian
	make sandbox name=dotnet
	make sandbox name=duckdb
	make sandbox name=elixir
	make sandbox name=gcc
	make sandbox name=go
	make sandbox name=java
	make sandbox name=javascript
	make sandbox name=kotlin
	make sandbox name=latex
	make sandbox name=lua
	make sandbox name=mariadb
	make sandbox name=mongodb
	make sandbox name=mssql
	make sandbox name=mysql
	make sandbox name=net-tools
	make sandbox name=odin
	make sandbox name=php
	make sandbox name=postgres
	make sandbox name=python
	make sandbox name=raku
	make sandbox name=redis
	make sandbox name=rlang
	make sandbox name=ruby
	make sandbox name=rust
	make sandbox name=shell
	make sandbox name=sqlite
	make sandbox name=typescript
	make sandbox name=vlang
	make sandbox name=zig

module github.com/uptrace/bun/example/create-table-index

go 1.16

replace github.com/uptrace/bun => ../..

replace github.com/uptrace/bun/extra/bundebug => ../../extra/bundebug

replace github.com/uptrace/bun/dialect/sqlitedialect => ../../dialect/sqlitedialect

replace github.com/uptrace/bun/driver/sqliteshim => ../../driver/sqliteshim

require (
	github.com/uptrace/bun v0.4.3
	github.com/uptrace/bun/dialect/sqlitedialect v0.4.3
	github.com/uptrace/bun/driver/sqliteshim v0.4.3
	github.com/uptrace/bun/extra/bundebug v0.4.3
)

module github.com/pandoratoolbox/bun/internal/dbtest

go 1.21

toolchain go1.22.1

replace github.com/uptrace/bun => ../..

replace github.com/pandoratoolbox/bun/dbfixture => ../../dbfixture

replace github.com/pandoratoolbox/bun/dialect/pgdialect => ../../dialect/pgdialect

replace github.com/pandoratoolbox/bun/driver/pgdriver => ../../driver/pgdriver

replace github.com/pandoratoolbox/bun/driver/sqliteshim => ../../driver/sqliteshim

replace github.com/pandoratoolbox/bun/dialect/mysqldialect => ../../dialect/mysqldialect

replace github.com/pandoratoolbox/bun/dialect/sqlitedialect => ../../dialect/sqlitedialect

replace github.com/pandoratoolbox/bun/dialect/mssqldialect => ../../dialect/mssqldialect

replace github.com/pandoratoolbox/bun/extra/bundebug => ../../extra/bundebug

require (
	github.com/bradleyjkemp/cupaloy v2.3.0+incompatible
	github.com/brianvoe/gofakeit/v6 v6.4.1
	github.com/denisenkom/go-mssqldb v0.12.2
	github.com/go-sql-driver/mysql v1.6.0
	github.com/google/uuid v1.6.0
	github.com/jackc/pgx/v4 v4.11.0
	github.com/stretchr/testify v1.8.1
	github.com/uptrace/bun v1.2.1
	github.com/pandoratoolbox/bun/dbfixture v1.2.1
	github.com/pandoratoolbox/bun/dialect/mssqldialect v1.2.1
	github.com/pandoratoolbox/bun/dialect/mysqldialect v1.2.1
	github.com/pandoratoolbox/bun/dialect/pgdialect v1.2.1
	github.com/pandoratoolbox/bun/dialect/sqlitedialect v1.2.1
	github.com/pandoratoolbox/bun/driver/pgdriver v1.2.1
	github.com/pandoratoolbox/bun/driver/sqliteshim v1.2.1
	github.com/pandoratoolbox/bun/extra/bundebug v1.2.1
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/dustin/go-humanize v1.0.1 // indirect
	github.com/fatih/color v1.16.0 // indirect
	github.com/golang-sql/civil v0.0.0-20220223132316-b832511892a9 // indirect
	github.com/golang-sql/sqlexp v0.1.0 // indirect
	github.com/hashicorp/golang-lru/v2 v2.0.7 // indirect
	github.com/jackc/chunkreader/v2 v2.0.1 // indirect
	github.com/jackc/pgconn v1.8.1 // indirect
	github.com/jackc/pgio v1.0.0 // indirect
	github.com/jackc/pgpassfile v1.0.0 // indirect
	github.com/jackc/pgproto3/v2 v2.0.6 // indirect
	github.com/jackc/pgservicefile v0.0.0-20200714003250-2b9c44734f2b // indirect
	github.com/jackc/pgtype v1.7.0 // indirect
	github.com/jinzhu/inflection v1.0.0 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	github.com/mattn/go-sqlite3 v1.14.22 // indirect
	github.com/ncruces/go-strftime v0.1.9 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/remyoudompheng/bigfft v0.0.0-20230129092748-24d4a6f8daec // indirect
	github.com/tmthrgd/go-hex v0.0.0-20190904060850-447a3041c3bc // indirect
	github.com/vmihailenco/msgpack/v5 v5.4.1 // indirect
	github.com/vmihailenco/tagparser/v2 v2.0.0 // indirect
	golang.org/x/crypto v0.21.0 // indirect
	golang.org/x/mod v0.16.0 // indirect
	golang.org/x/sys v0.18.0 // indirect
	golang.org/x/text v0.14.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	mellium.im/sasl v0.3.1 // indirect
	modernc.org/gc/v3 v3.0.0-20240304020402-f0dba7c97c2b // indirect
	modernc.org/libc v1.49.0 // indirect
	modernc.org/mathutil v1.6.0 // indirect
	modernc.org/memory v1.7.2 // indirect
	modernc.org/sqlite v1.29.5 // indirect
	modernc.org/strutil v1.2.0 // indirect
	modernc.org/token v1.1.0 // indirect
)

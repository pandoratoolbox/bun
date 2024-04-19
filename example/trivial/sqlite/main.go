package main

import (
	"context"
	"database/sql"
	"fmt"

	"github.com/pandoratoolbox/bun/dialect/sqlitedialect"
	"github.com/pandoratoolbox/bun/driver/sqliteshim"
	"github.com/pandoratoolbox/bun/extra/bundebug"
	"github.com/uptrace/bun"
)

func main() {
	ctx := context.Background()

	// Open an in-memory SQLite database.
	sqlite, err := sql.Open(sqliteshim.ShimName, "file::memory:?cache=shared")
	if err != nil {
		panic(err)
	}

	// Create a Bun db on top of it.
	db := bun.NewDB(sqlite, sqlitedialect.New())

	// Print all queries to stdout.
	db.AddQueryHook(bundebug.NewQueryHook(bundebug.WithVerbose(true)))

	var rnd int64

	// Select a random number.
	if err := db.NewSelect().ColumnExpr("random()").Scan(ctx, &rnd); err != nil {
		panic(err)
	}

	fmt.Println(rnd)
}

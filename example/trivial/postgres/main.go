package main

import (
	"context"
	"database/sql"
	"fmt"

	"github.com/pandoratoolbox/bun/dialect/pgdialect"
	"github.com/pandoratoolbox/bun/driver/pgdriver"
	"github.com/pandoratoolbox/bun/extra/bundebug"
	"github.com/uptrace/bun"
)

func main() {
	ctx := context.Background()

	// Open a PostgreSQL database.
	dsn := "postgres://postgres:@localhost:5432/test?sslmode=disable"
	pgdb := sql.OpenDB(pgdriver.NewConnector(pgdriver.WithDSN(dsn)))

	// Create a Bun db on top of it.
	db := bun.NewDB(pgdb, pgdialect.New())

	// Print all queries to stdout.
	db.AddQueryHook(bundebug.NewQueryHook(bundebug.WithVerbose(true)))

	var rnd float64

	// Select a random number.
	if err := db.NewSelect().ColumnExpr("random()").Scan(ctx, &rnd); err != nil {
		panic(err)
	}

	fmt.Println(rnd)
}

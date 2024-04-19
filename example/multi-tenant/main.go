package main

import (
	"context"
	"database/sql"
	"os"

	"github.com/davecgh/go-spew/spew"

	"github.com/pandoratoolbox/bun/dbfixture"
	"github.com/pandoratoolbox/bun/dialect/sqlitedialect"
	"github.com/pandoratoolbox/bun/driver/sqliteshim"
	"github.com/pandoratoolbox/bun/extra/bundebug"
	"github.com/uptrace/bun"
)

func main() {
	ctx := context.Background()

	sqlite, err := sql.Open(sqliteshim.ShimName, "file::memory:?cache=shared")
	if err != nil {
		panic(err)
	}
	sqlite.SetMaxOpenConns(1)

	db := bun.NewDB(sqlite, sqlitedialect.New())
	db.AddQueryHook(bundebug.NewQueryHook(bundebug.WithVerbose(true)))

	// Register models for the fixture.
	db.RegisterModel((*Story)(nil))

	// Create tables and load initial data.
	fixture := dbfixture.New(db, dbfixture.WithRecreateTables())
	if err := fixture.Load(ctx, os.DirFS("."), "fixture.yml"); err != nil {
		panic(err)
	}

	{
		ctx := context.WithValue(ctx, "tenant_id", 1)
		stories, err := selectStories(ctx, db)
		if err != nil {
			panic(err)
		}
		spew.Dump(stories)
	}
}

func selectStories(ctx context.Context, db *bun.DB) ([]*Story, error) {
	stories := make([]*Story, 0)
	if err := db.NewSelect().Model(&stories).Scan(ctx); err != nil {
		return nil, err
	}
	return stories, nil
}

type Story struct {
	ID       int64 `bun:",pk,autoincrement"`
	Title    string
	AuthorID int64
}

var _ bun.BeforeSelectHook = (*Story)(nil)

func (s *Story) BeforeSelect(ctx context.Context, query *bun.SelectQuery) error {
	if id := ctx.Value("tenant_id"); id != nil {
		query.Where("author_id = ?", id)
	}
	return nil
}

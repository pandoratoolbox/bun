package mysqldialect

import (
	"reflect"

	"github.com/pandoratoolbox/bun/schema"
)

func scanner(typ reflect.Type) schema.ScannerFunc {
	return schema.Scanner(typ)
}

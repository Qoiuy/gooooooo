// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package syntax

import (
	"flag"
	"fmt"
	"os"
	"strings"
	"testing"
)

// TestCodeSnippet 代码片段
func TestCodeSnippet(t *testing.T) {
	// result : if ( op name op= . literal literal literal literal literal . . name ;
	const src = "if (+foo\t+=..123/***/0.9_0e-0i'a'`raw`\"string\"..f;//$"

	var got scanner
	got.init(strings.NewReader(src), errh, 0)

	for {
		got.next()
		if got.tok == _EOF {
			fmt.Printf("\n")
			break
		}

		fmt.Printf("%+v ", got.tok)

	}
}

var src_ = flag.String("src", "./scanner.go", "source file to parse")

func TestFile(t *testing.T) {
	if testing.Short() {
		t.Skip("skipping test in short mode")
	}

	filename := *src_ // can be changed via -src flag
	src, err := os.Open(filename)
	if err != nil {
		t.Fatal(err)
	}
	defer src.Close()

	var s scanner
	s.init(src, errh, 0)
	for {
		s.next()
		if s.tok == _EOF {
			break
		}
		if !testing.Verbose() {
			continue
		}
		switch s.tok {
		case _Name, _Literal:
			fmt.Printf("%s:%d:%d: %s => %s\n", filename, s.line, s.col, s.tok, s.lit)
		case _Operator:
			fmt.Printf("%s:%d:%d: %s => %+v (prec = %d)\n", filename, s.line, s.col, s.tok, s.op, s.prec)
		default:
			fmt.Printf("%s:%d:%d: %s\n", filename, s.line, s.col, s.tok)
		}
	}
}

// errh is a default error handler for basic tests.
func errh(line, col uint, msg string) {
	panic(fmt.Sprintf("%d:%d: %s", line, col, msg))
}

// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package syntax

import (
	"encoding/json"
	"flag"
	"testing"
)

func TestParse(t *testing.T) {

	var src_ = flag.String("src", "./scanner.go", "source file to parse")

	got, err := ParseFile(*src_, func(err error) { t.Error(err) }, nil, AllowGenerics)
	if err != nil {
		t.Errorf("e:%+v", err)
	}
	pGot, _ := json.Marshal(got)
	t.Logf("pGot : %+v", string(pGot))
}
func TestParse2(t *testing.T) {

	var src_ = flag.String("src", "./scanner.go", "source file to parse")

	got, err := ParseFile(*src_, func(err error) { t.Error(err) }, nil, CheckBranches)
	if err != nil {
		t.Errorf("e:%+v", err)
	}
	pGot, _ := json.Marshal(got)
	t.Logf("pGot : %+v", string(pGot))
}
func TestParse1(t *testing.T) {

	var src_ = flag.String("src", "./parser.go", "source file to parse")

	got, err := ParseFile(*src_, func(err error) { t.Error(err) }, nil, AllowGenerics)
	if err != nil {
		t.Errorf("e:%+v", err)
	}
	pGot, _ := json.Marshal(got)
	t.Logf("pGot : %+v", string(pGot))
}

//
//func TestVerify(t *testing.T) {
//
//	var src_ = flag.String("src", "./scanner.go", "source file to parse")
//
//	ast, err := ParseFile(*src_, func(err error) { t.Error(err) }, nil, AllowGenerics)
//	if err != nil {
//		return // error already reported
//	}
//	verifyPrint(t, *src_, ast)
//}
//
//func verifyPrint(t *testing.T, filename string, ast1 *File) {
//	var buf1 bytes.Buffer
//	_, err := Fprint(&buf1, ast1, LineForm)
//	if err != nil {
//		panic(err)
//	}
//	bytes1 := buf1.Bytes()
//
//	ast2, err := Parse(NewFileBase(filename), &buf1, nil, nil, 0)
//	if err != nil {
//		panic(err)
//	}
//
//	var buf2 bytes.Buffer
//	_, err = Fprint(&buf2, ast2, LineForm)
//	if err != nil {
//		panic(err)
//	}
//	bytes2 := buf2.Bytes()
//
//	if bytes.Compare(bytes1, bytes2) != 0 {
//		fmt.Printf("--- %s ---\n", filename)
//		fmt.Printf("%s\n", bytes1)
//		fmt.Println()
//
//		fmt.Printf("--- %s ---\n", filename)
//		fmt.Printf("%s\n", bytes2)
//		fmt.Println()
//
//		t.Error("printed syntax trees do not match")
//	}
//}
//
//func TestParseFile(t *testing.T) {
//	_, err := ParseFile("", nil, nil, 0)
//	if err == nil {
//		t.Error("missing io error")
//	}
//
//	var first error
//	_, err = ParseFile("", func(err error) {
//		if first == nil {
//			first = err
//		}
//	}, nil, 0)
//	if err == nil || first == nil {
//		t.Error("missing io error")
//	}
//	if err != first {
//		t.Errorf("got %v; want first error %v", err, first)
//	}
//}

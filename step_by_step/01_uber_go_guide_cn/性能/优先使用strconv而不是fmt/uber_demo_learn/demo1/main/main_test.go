package main

import (
	"fmt"
	"math/rand"
	"strconv"
	"testing"
)

func BenchmarkFmtSprint(b *testing.B) {

	for i := 0; i < b.N; i++ {
		_ = fmt.Sprint(rand.Int())
	}
}

func BenchmarkStrconv(b *testing.B) {
	for i := 0; i < b.N; i++ {
		_ = strconv.Itoa(rand.Int())
	}
}

// 测试命令
// go test -bench . -benchmem

// 大概一倍左右的查询
//BenchmarkFmtSprint-8     9984238               119 ns/op              39 B/op          2 allocs/op
//BenchmarkStrconv-8      20017238                57.8 ns/op            31 B/op          1 allocs/op

//TODO 明天2021-10-10早晨 脑子清醒的时候把 fmt 和 strconv 原理看了

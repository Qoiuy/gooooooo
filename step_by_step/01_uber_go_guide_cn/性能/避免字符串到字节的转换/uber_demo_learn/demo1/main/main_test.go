package main

import (
	"bytes"
	"testing"
)

func BenchmarkBad(b *testing.B) {
	var w = bytes.Buffer{}
	////b.ResetTimer() // 重置定时器
	//for i := 0; i < b.N; i++ {
	//	w.Write([]byte("Hello world"))
	//}
	for i := 0; i < b.N; i++ {
		w.Write([]byte("Hello world"))
	}

}
func BenchmarkGood(b *testing.B) {
	var w = bytes.Buffer{}
	//data := []byte("Hello world")
	////b.ResetTimer() // 重置定时器
	//for i := 0; i < b.N; i++ {
	//	w.Write(data)
	//}
	data := []byte("Hello world")
	for i := 0; i < b.N; i++ {
		w.Write(data)
	}
}

// go test -bench .  -benchtime=50000000x
// 思远：很多只会执行一次的代码 就不要这样写 这样写会导致创建多次

package main

import "testing"

func BenchmarkFib(b *testing.B) {
	for n := 0; n < b.N; n++ {
		fib(30)
	}
}
func BenchmarkAib(b *testing.B) {
	for n := 0; n < b.N; n++ {
		fib(30)
	}
}

// 1. 普通基准测试
// go test -bench .

// 2. 支持正则的命令 和1的结果不同 这里并没有测试  BenchmarkAib
// go test -bench="Fib$" .

// 3. 指定cpu核数
// go test -bench="Fib$" . -cpu=2,5

// 4. 指定 测试时间
// go test -bench="Fib$" . -benchtime=5s

// 5. 指定 测试次数
// go test -bench="Fib$" . -benchtime=10x

// 6. 指定 测试轮次
// go test -bench="Fib$" . -benchtime=5s -count=3

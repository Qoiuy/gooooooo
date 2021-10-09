package demo3

import (
	"testing"
	"time"
)

func fib(n int) int {
	return n + 1
}
func BenchmarkFib(b *testing.B) {
	time.Sleep(time.Second * 3) // 模拟耗时准备任务
	for n := 0; n < b.N; n++ {
		fib(30) // run fib(30) b.N times
	}
}

// 普通测试
//go test -bench='Fib$' -benchtime=50x .

func BenchmarkFib1(b *testing.B) {
	time.Sleep(time.Second * 3) // 模拟耗时准备任务
	b.ResetTimer()              // 重置定时器
	for n := 0; n < b.N; n++ {
		fib(30) // run fib(30) b.N times
	}
}

// 重置定时器 执行时间恢复正常
// go test -bench='Fib.*$' -benchtime=50x .

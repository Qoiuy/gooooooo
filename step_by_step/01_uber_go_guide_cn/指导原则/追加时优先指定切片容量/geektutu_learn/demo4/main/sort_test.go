package main

import "testing"

func BenchmarkBubbleSort(b *testing.B) {
	for n := 0; n < b.N; n++ {

		// 初始化待测试的数组
		b.StopTimer()
		nums := generateWithCap(10000)
		b.StartTimer()

		bubbleSort(nums)
	}

}

// 测试命令
//go test -bench='Sort$' .

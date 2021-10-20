package main

import (
	"testing"
)

const size = 500000

func BenchmarkBad(b *testing.B) {
	data := make([]int, 0)
	b.ResetTimer() // 重置定时器
	for n := 0; n < b.N; n++ {
		for k := 0; k < size; k++ {
			data = append(data, k)
		}
	}

}
func BenchmarkGood(b *testing.B) {
	data := make([]int, 0, size)
	b.ResetTimer() // 重置定时器
	for n := 0; n < b.N; n++ {
		for k := 0; k < size; k++ {
			data = append(data, k)
		}
	}
}

// go test -bench .  -benchtime=5000x
//goos: darwin
//goarch: amd64
//pkg: gooooooo/指定容器容量/uber_demo_learn/demo1/main
//BenchmarkBad-8              5000             40497 ns/op
//BenchmarkGood-8             5000             11347 ns/op
//PASS
//ok      gooooooo/指定容器容量/uber_demo_learn/demo1/main        0.274s

// go test -bench .  -benchtime=50000x
//goos: darwin
//goarch: amd64
//pkg: gooooooo/指定容器容量/uber_demo_learn/demo1/main
//BenchmarkBad-8             50000             38782 ns/op
//BenchmarkGood-8            50000             10648 ns/op
//PASS
//ok      gooooooo/指定容器容量/uber_demo_learn/demo1/main        2.485s

// go test -bench .  -benchtime=500000x
//pkg: gooooooo/指定容器容量/uber_demo_learn/demo1/main
//BenchmarkBad-8            500000             38080 ns/op
//BenchmarkGood-8           500000             10500 ns/op
//PASS
//ok      gooooooo/指定容器容量/uber_demo_learn/demo1/main        24.303s

// 内存测试
// go test -bench  . -benchmem -benchtime=500000x
//goos: darwin
//goarch: amd64
//pkg: gooooooo/指定容器容量/uber_demo_learn/demo1/main
//BenchmarkBad-8            500000             49694 ns/op          386297 B/op         20 allocs/op
//BenchmarkGood-8           500000             10497 ns/op           81920 B/op          1 allocs/op
//PASS
//ok      gooooooo/指定容器容量/uber_demo_learn/demo1/main        30.119s

// go test -bench  . -benchmem -benchtime=50000x
//goos: darwin
//goarch: amd64
//pkg: gooooooo/指定容器容量/uber_demo_learn/demo1/main
//BenchmarkBad-8             50000             40671 ns/op          386298 B/op         20 allocs/op
//BenchmarkGood-8            50000             10971 ns/op           81920 B/op          1 allocs/op
//PASS
//ok      gooooooo/指定容器容量/uber_demo_learn/demo1/main        2.595s

// go test -bench  . -benchmem -benchtime=5000x
//goos: darwin
//goarch: amd64
//pkg: gooooooo/指定容器容量/uber_demo_learn/demo1/main
//BenchmarkBad-8              5000             48055 ns/op          386299 B/op         20 allocs/op
//BenchmarkGood-8             5000             12365 ns/op           81920 B/op          1 allocs/op
//PASS
//ok      gooooooo/指定容器容量/uber_demo_learn/demo1/main        0.316s

// go test -bench  . -benchmem -benchtime=500x
//goos: darwin
//goarch: amd64
//pkg: gooooooo/指定容器容量/uber_demo_learn/demo1/main
//BenchmarkBad-8               500             44974 ns/op          386305 B/op         20 allocs/op
//BenchmarkGood-8              500             12166 ns/op           81920 B/op          1 allocs/op
//PASS
//ok      gooooooo/指定容器容量/uber_demo_learn/demo1/main        0.042s

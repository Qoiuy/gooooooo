package main

import "testing"

//var size = 10000000 // 73.249s
//var size = 1000000 // 8.266s
//var size = 100000 // 8.137s
//var size = 10000 // 6.723s
//var size = 1000 // 11.536s
//var size = 100 // 8.059s
//var size = 10 // 6.687s
//var size = 1 // 8.720s
var size = 0 // 4.035s

func BenchmarkBad(b *testing.B) {
	for n := 0; n < b.N; n++ {
		data := make([]int, 0)
		for k := 0; k < size; k++ {
			data = append(data, k)
		}
	}
}

func BenchmarkBad1(b *testing.B) {
	data := make([]int, 0)
	for n := 0; n < b.N; n++ {
		for k := 0; k < size; k++ {
			data = append(data, k)
		}
	}
}

func BenchmarkGood(b *testing.B) {
	for n := 0; n < b.N; n++ {
		data := make([]int, 0, size)
		for k := 0; k < size; k++ {
			data = append(data, k)
		}
	}
}

func BenchmarkGood1(b *testing.B) {
	data := make([]int, 0, size)
	for n := 0; n < b.N; n++ {
		for k := 0; k < size; k++ {
			data = append(data, k)
		}
	}
}

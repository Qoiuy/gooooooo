package main

//go:noinline
func swap(a, b int) (x int, y int) {
	x = a
	y = b
	return
}

func main() {
	swap(10, 20)
}

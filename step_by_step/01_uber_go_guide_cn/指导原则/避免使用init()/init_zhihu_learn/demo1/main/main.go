package main

import "fmt"

var T int64 = a()

func init() {
	fmt.Println("init a main.go")
}

var TB int64 = b()

func a() int64 {
	fmt.Println("calling a()")
	return 2
}
func b() int64 {
	fmt.Println("calling b()")
	return 2
}
func c() int64 {
	fmt.Println("calling c()")
	return 2
}

func main() {
	fmt.Println("calling main")
}

var TC int64 = c()

// result :
//calling a()
//calling b()
//calling c()
//init a main.go
//calling main

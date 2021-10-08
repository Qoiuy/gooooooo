package main

import "fmt"

var _ int64 = s()

func init() {
	fmt.Println("init in sandbox.go")
}

func s() int64 {
	fmt.Println("calling s() in sandbox.go")
	return 1
}

func main() {
	fmt.Println("main")
}

// 懒加载?  TODO 需要看源码的 修改记录才能知道原因

//实际执行结果
//calling s() in sandbox.go
//init ini sandbox.go
//main

//知乎上说的结果
// calling a() in a.go
//calling s() in sandbox.go
//calling z() in z.go
//init in a.go
//init in sandbox.go
//init in z.go
//main

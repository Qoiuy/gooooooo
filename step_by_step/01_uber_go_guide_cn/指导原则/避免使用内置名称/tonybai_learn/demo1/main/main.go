package main

import (
	"fmt"
	"unsafe"
)

// 不注释`type int int8`显示的结果
//main.int
//1

// 注释`type int int8`显示的结果
//int
//8

//type int int8

func main() {
	var a int = 4
	fmt.Printf("%T\n", a)
	fmt.Println(unsafe.Sizeof(a)) //
}

package main

import (
	"fmt"
)

var errorMessage string

// `error` 指向内置的非覆盖

// or

func handleErrorMessage1(msg string) {
	// `error` 指向内置的非覆盖
}

func main() {
	var err error
	fmt.Println("err: ", err)
}

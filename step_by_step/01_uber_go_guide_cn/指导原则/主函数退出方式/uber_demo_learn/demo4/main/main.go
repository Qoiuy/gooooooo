package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"
)

func readFile(path string) string {
	//  defer 操作 未执行
	defer func() { fmt.Println("执行了defer 操作") }()

	f, err := os.Open(path)
	if err != nil {
		log.Fatal(err)
	}
	b, err := ioutil.ReadAll(f)
	if err != nil {
		log.Fatal(err)
	}
	return string(b)
}

func main() {
	log.SetFlags(log.Lshortfile | log.LstdFlags) // set flags

	// 演示执行defer
	body := readFile("./go.mod")

	// 演示不执行defer
	body = readFile("")

	fmt.Println(body)
}

// result
//执行了defer 操作
//2021/10/09 15:26:36 main.go:16: open : no such file or directory

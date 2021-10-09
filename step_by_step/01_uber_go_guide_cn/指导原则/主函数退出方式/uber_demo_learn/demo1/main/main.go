package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"
)

var path = ""

func main() {
	log.SetFlags(log.Lshortfile | log.LstdFlags) // set flags
	body := readFile(path)
	fmt.Println(body)
}

// 报错
// 2021/10/09 15:05:15 main.go:24: open : no such file or directory

func readFile(path string) string {
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

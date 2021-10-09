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
	body, err := readFile(path)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(body)
}

// 报错
// 2021/10/09 15:04:32 main.go:16: open : no such file or directory

func readFile(path string) (string, error) {

	f, err := os.Open(path)
	if err != nil {
		return "", err
	}
	b, err := ioutil.ReadAll(f)
	if err != nil {
		return "", err
	}
	return string(b), nil
}

package main

import (
	"io/ioutil"
	"log"
	"os"
)

func main() {
	args := os.Args[1:]
	if len(args) != 1 {
		log.Fatal("missing file")
	}
	name := args[0]
	f, err := os.Open(name)
	if err != nil {
		log.Fatal(err)
	}
	defer f.Close()
	// 如果我们调用log.Fatal 在这条线之后
	// f.Close 将会被执行.
	_, err = ioutil.ReadAll(f)
	if err != nil {
		log.Fatal(err)
	}
	// ...
}

package main

import (
	"errors"
	"io/ioutil"
	"log"
	"os"
)

func main() {
	if err := run(); err != nil {
		log.Fatal(err)
	}
}
func run() error {
	args := os.Args[1:]
	if len(args) != 1 {
		return errors.New("missing file")
	}
	name := args[0]
	f, err := os.Open(name)
	if err != nil {
		return err
	}
	defer f.Close()
	_, err = ioutil.ReadAll(f)
	if err != nil {
		return err
	}
	// ...
}

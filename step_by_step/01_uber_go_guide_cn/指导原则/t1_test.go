package main

import "testing"

type S struct {
	data string
}

func (s S) Read() string {
	return s.data
}

func (s *S) Write(str string) {
	s.data = str
}

func Test_1(t *testing.T) {
	sVal := map[int]S{1: {"A"}}

	sVal[1].Read()

	//sVal[1].Write("aaa") //报错

	sPtrs := map[int]*S{1: {"A"}}

	sPtrs[1].Read()
	sPtrs[1].Write("test")
}

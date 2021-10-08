package main

import (
	"fmt"
	"gooooooo/demo2/pack"
	"gooooooo/demo2/test_util"
)

func main() {
	// Pack 初始化依赖 Pack 参见 init_zhihu_learn/demo2/pack/pack.go:8
	fmt.Println(pack.Pack)
	fmt.Println(test_util.Util)
}

// result
//init test_util
//init pack  5
//6
//5

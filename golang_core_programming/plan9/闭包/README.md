

golang 核心编程 2.7.4



编译生成汇编

-S 产生汇编的代码
-N 禁用优化
-l 禁用内联


GOOS=linux GOARCH=amd64 go tool compile -S c2_7_4a.go > c2_7_4a.s 2>&1
# 汇编部分


编译生成汇编

-S 产生汇编的代码
-N 禁用优化
-l 禁用内联


GOOS=linux GOARCH=amd64 go tool compile -l -N -S swap.go > swap.s 2>&1

https://9p.io/sys/doc/asm.html
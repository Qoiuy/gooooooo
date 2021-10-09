# 啥叫内置名称
导入的包？

go vet之类的工具会正确地指出这些和其他情况下的隐式问题。


我刚刚测试了一下 好像没啥用
 go vet .



## `error` 作用域隐式覆盖
啥意思？ 代码参考
指导原则/避免使用内置名称/uber_demo_learn/demo1/main/bad_code.go:5
指导原则/避免使用内置名称/uber_demo_learn/demo1/main/bad_code.go:8

啥叫golang作用域
应该就是一个变量的有效的范围吧

`error` 作用域指的是 package error包的作用域？

## golang 内建函数 (英文名叫builtin)
/usr/local/go/src/builtin/builtin.go:11
参考博客 https://tonybai.com/2020/12/17/where-is-the-source-of-builtin-functions/

| close  | complex | complex64 | complex128 | 
| ------ | ------- | --------- | ---------- |
| append | bool    | byte      | cap        |    
| imag   | int     | int8      | int16      |
| copy   | false   | float32   | float64    |
| make   | new     | nil       | panic      |
| int32  | int64   | iota      | len        |
| string | true    | uint      | uint8      |
| print  | println | real      | recover    |
| uint16 | uint32  | uint64    | uintptr    |

这36个 拥有universe block作用域


和golang 关键字 不同
| break    | default     | func   | interface | select |
| -------- | ----------- | ------ | --------- | ------ |
| case     | defer       | go     | map       | struct |
| chan     | else        | goto   | package   | switch |
| const    | fallthrough | if     | range     | type   |
| continue | for         | import | return    | var    |__
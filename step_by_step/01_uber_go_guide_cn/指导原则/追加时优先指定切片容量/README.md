
## 追加时优先指定切片容量

// TODO 找人讨论一下
实际测试结果和文档不符 不知道什么原因  
(指导原则/追加时优先指定切片容量/uber_demo_learn/demo1/main/a_test.go:5

里面有一句 
BenchmarkTest  如何做 BenchmarkTest呢？ 我脑子里好像没有完整的知识

## benchmark 基准测试
参考 
https://zhuanlan.zhihu.com/p/80578541
https://geektutu.com/post/hpg-benchmark.html

go自带的benchmark是利器，有了它，开发者可以方便快捷地在测试一个函数方法在串行或并行环境下的基准表现。
指定一个时间（默认是1秒），看测试对象在达到或超过时间上限时，最多能被执行多少次和在此期间测试对象内存分配情况。


### 启动命令 
正常启动基准测试 ( 指导原则/追加时优先指定切片容量/geektutu_learn/demo1/main/fib_test.go:17   
支持正则 ( 指导原则/追加时优先指定切片容量/geektutu_learn/demo1/main/fib_test.go:20


### 如何工作的

benchmark 用例的参数 b *testing.B,
有个属性 b.N 表示这个用例需要运行的次数。
b.N 对于每个用例都是不一样的。

那这个值是如何决定的呢？
b.N 从 1 开始，如果该用例能够在 1s 内完成，b.N 的值便会增加，再次执行。
b.N 的值大概以 1, 2, 3, 5, 10, 20, 30, 50, 100 这样的序列递增，越到后面，增加得越快。
```
BenchmarkFib-8               202           5980669 ns/op
```

BenchmarkFib-8 中的 -8 即 GOMAXPROCS，默认等于 CPU 核数。
指定cpu核数
可以通过 -cpu 参数改变 GOMAXPROCS，-cpu 支持传入一个列表作为参数， ( 指导原则/追加时优先指定切片容量/geektutu_learn/demo1/main/fib_test.go:23

### 提升准确度
可以使用 -benchtime 指定为 5s。（ 指导原则/追加时优先指定切片容量/geektutu_learn/demo1/main/fib_test.go:26
-benchtime 可以是具体的次数。（ 指导原则/追加时优先指定切片容量/geektutu_learn/demo1/main/fib_test.go:29

-count 参数可以用来设置 benchmark 的轮数。（ 指导原则/追加时优先指定切片容量/geektutu_learn/demo1/main/fib_test.go:32

-benchmem 参数可以度量内存分配的次数 （ 指导原则/追加时优先指定切片容量/geektutu_learn/demo2/main/generate_test.go:43



SMP: Symmetric multiprocessing  对称多处理机

TODO 第5章开头部分的 并发和并行 画一个思维导图.


go 关键字后必须跟一个 函数 ，不能是语句或是其他东西，函数的返回值被忽略

非阻塞的，不会等待
函数的返回值会被忽略
不保证goroutine的执行次序
没有父子概念，所有goroutine被平等执行
会为main函数创建一个goroutine
没有暴露goroutine id给用户，所以不能现式的操作另一个goroutine

func Goexit() 看不懂 
func Gosched() 看不懂

go的哲学是 "不要通过共享内存来通信, 而是通过通信来共享内存"

操作不同状态的chan会引发三种行为
panic 阻塞 非阻塞 具体情况...
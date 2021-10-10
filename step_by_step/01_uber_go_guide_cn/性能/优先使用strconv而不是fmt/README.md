将原语转换为字符串或从字符串转换时，strconv速度比fmt快。


基准测试结果出来了 参见  ( 性能/优先使用strconv而不是fmt/uber_demo_learn/demo1/main/main_test.go:26

可是 为什么？


## fmt.Print原理：
昨天看了一下 没太看懂。刚刚又看了一下，
参考的文章为 ： https://cloud.tencent.com/developer/article/1399913
没有看全部的代码。只是简单看了一个Sprint的逻辑

每一次打印都要new 一个打印器（pp） newPrinter()
这个打印器里面有一个 pp 我看到的 fmt的打印都由pp来实现的.

doPrint操作会将数据放到 pp.buf 字段中.

有一个赋值的操作 

赋值结束释放掉 pp

将计算好的 字符串返回 

## strconv 原理：
https://blog.cyeam.com/golang/2018/06/20/go-itoa
这篇文章中说 10进制 小于100的值 有加速优化算法 懵
说的是这个吧 /usr/local/go/src/strconv/itoa.go:26

但是实际执行的不是这个优化算法  还是 formatBits方法

如果是十进制的话
把结果值 两位两位拆分 例如原值  83913871784914010934 
拆分成 83 91 38 71 78 49 14 01 09 34
然后这些都是可以优化的代码 速度大概快了一倍吧.
然后把数据 放在一个数组中 ([65]int8) 使用 string 强制转换 
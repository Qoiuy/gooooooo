### 看完内容我就一个疑惑 simplego.l 怎么出来的

(大大的脑袋,小小的疑惑)


➜  gooooooo git:(main) ✗ lex -V
flex 2.6.4 Apple(flex-34)

最后发现答案在书里面

```shell
  lex simplego.l
  cc lex.yy.c -o simplego -ll
  cat main.go | ./simplego
```

<img src="https://iszhanggc-private-blog.oss-cn-beijing.aliyuncs.com/typora_pic/image-20211227204022903.png" alt="image-20211227204022903" style="zoom:25%;" />


跑偏的


google 搜索 golang lexer parser 没有什么认可的结果

[掘金文章](https://juejin.cn/post/6844904015109554190 )里面看到了这篇, 里面有下面这句话


    go于1.5开始实现了自举

于是去找了一下, [果然有](https://docs.google.com/document/d/1OaatvGhEAq7VseQ9kkavxKNAfepWy2yhPUBs96FGV28/edit)



## golang src 中.l文件

src 源码中没有`.l文件`

<img src="https://iszhanggc-private-blog.oss-cn-beijing.aliyuncs.com/typora_pic/image-20211227204433845.png" alt="image-20211227204433845" style="zoom:50%;" />

怎么实现的呢?

	/usr/local/go/src/cmd/compile/internal/syntax/scanner.go:14




scanner 用来扫描文件 核心逻辑 在 scanner.next() 中 

解析map 参考tokens.go文件

	·/usr/local/go/src/cmd/compile/internal/syntax/tokens.go:12

解析分为 名称 操作 分隔符 关键字和空格

解析结果是啥样的呢?

准备去跑一下testcase   看到了一个文件 解析的结果 



<img src="https://iszhanggc-private-blog.oss-cn-beijing.aliyuncs.com/typora_pic/image-20211227214200522.png" alt="image-20211227214200522" style="zoom:50%;" />





词法分析 看到这里应该差不多了


看完内容我就一个疑惑 simplego.l 怎么出来的
(大大的脑袋,小小的疑惑)


➜  gooooooo git:(main) ✗ lex -V
flex 2.6.4 Apple(flex-34)

最后发现答案在书里面

```shell
  lex simplego.l
  cc lex.yy.c -o simplego -ll
  cat main.go | ./simplego
```

<img src="/Users/sanfeng/Library/Mobile Documents/com~apple~CloudDocs/Documents/Typroa/img/image-20211227204022903.png" alt="image-20211227204022903" style="zoom:25%;" />





google 搜索 golang lexer parser 没有什么认可的结果

[掘金文章](https://juejin.cn/post/6844904015109554190 )里面看到了这篇, 里面有下面这句话


    go于1.5开始实现了自举

于是去找了一下, [果然有](https://docs.google.com/document/d/1OaatvGhEAq7VseQ9kkavxKNAfepWy2yhPUBs96FGV28/edit)




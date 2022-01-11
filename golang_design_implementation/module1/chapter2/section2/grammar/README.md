## #语法分析



看到了一个很好的博客文章

https://gocompiler.shizhz.me/. 这是一本书

文法是啥?

分析方法是啥?



看了第一遍之后脑子里面记着的内容

拿到一个文件，然后直接进行词法解析， 判断解析结果是否符合固定文法

直接解析成 AST.



问题是怎么能看到这个过程呢?

我用parse去解析一个文件. 打断点. 

我去看一下testcase



ParseFile 方法是在 syntax.go 文件里面的 .

<img src="https://iszhanggc-private-blog.oss-cn-beijing.aliyuncs.com/typora_pic/image-20211230203803363.png" alt="image-20211230203803363" style="zoom:50%;" />



然后发现syntax.go文件依赖pos.go， parser.go， node.go

parser.go 又依赖 branches.go

branches.go 依赖 printer.go

printer.go 依赖dumper.go, operator_string.go



问题1.  两种解析模式分别啥意思?

```
CheckBranches Mode = 1 << iota // check correct use of labels, break, continue, and goto statements
	AllowGenerics
```





入口两个

最外层 读取项目

解析文件词法 `/usr/local/go/src/cmd/compile/internal/syntax/parser.go:17`



parser.go 搜索 ----------------------------- 有惊喜

发现整个源码被分为下面几部分

```shell
# /usr/local/go/src/cmd/compile/internal/syntax
#  ack "\-\-\-\-\-" -A 1 | grep -v -- '---'

 
# Error handling 错误处理；差错处理
# Package files 包文件
# Declarations 声明
# Expressions 表达式
# Types 类型
# Statements  语句
# Common productions 常用
```



<img src="https://iszhanggc-private-blog.oss-cn-beijing.aliyuncs.com/typora_pic/image-20211230202738620.png" alt="image-20211230202738620" style="zoom:50%;" />


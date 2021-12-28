## #语法分析



文法是啥?

分析方法是啥?



看了第一遍之后脑子里面记着的内容

拿到一个文件，然后直接进行词法解析， 判断解析结果是否符合固定文法

直接解析成 AST.



入口两个

最外层 读取项目

解析文件词法 `/usr/local/go/src/cmd/compile/internal/syntax/parser.go:17`



parser.go 搜索 ----------------------------- 有惊喜

发现整个源码被分为下面几部分

```shell
# /usr/local/go/src/cmd/compile/internal/syntax
# ack "\-\-\-\-\-" -A 1
 
# Error handling 错误处理；差错处理
# Package files 包文件
# Declarations 声明
# Expressions 表达式
# Types 类型
# Statements  语句
# Common productions 常用
```

<img src="https://iszhanggc-private-blog.oss-cn-beijing.aliyuncs.com/typora_pic/image-20211228205529830.png" alt="image-20211228205529830" style="zoom:50%;" />


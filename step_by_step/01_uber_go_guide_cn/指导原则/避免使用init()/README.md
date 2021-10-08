# 避免使用 init()

## golang 的init方法是如何执行的?

### effective go 中这样描述
   Finally(最后), each source file can define its own niladic(???) init function to set up whatever state is required.
    最后，每个源文件都可以定义自己的 niladic init函数来设置所需的任何状态。
     (Actually each file can have multiple init functions.)
     实际上每个文件可以有多个 init函数。 
     
   And finally means finally: init is called after all the variable declarations in the package have evaluated their initializers,
    finally 的意思是 finally: init在包中的所有变量声明都评估了它们的初始值设定项之后调用，
    
   and those are evaluated only after all the imported packages have been initialized.
    并且只有在所有导入的包都已初始化之后才评估它们。
                              
   Besides initializations that cannot be expressed as declarations, 
    除了不能表示为声明的初始化之外，
   a common use of init functions is to verify or repair correctness of the program state before real execution begins.
    init函数的一个常见用途是在真正执行开始之前验证或修复程序状态的正确性。
 
``` go

```

   
### 知乎中有人这样理解
   golang程序初始化先于main函数执行，由runtime进行初始化，初始化顺序如下：
   
   初始化导入的包（包的初始化顺序并不是按导入顺序（“从上到下”）执行的，runtime需要解析包依赖关系，没有依赖的包最先初始化，与变量初始化依赖关系类似，参见golang变量的初始化）；
   初始化包作用域的变量（该作用域的变量的初始化也并非按照“从上到下、从左到右”的顺序，runtime解析变量依赖关系，没有依赖的变量最先初始化，参见golang变量的初始化）；
   执行包的init函数；
   
   
## 学习到的
### 别人怎么用init (effective go)
    校验参数 
    init_effective_go_learn/main/main.go:12
### init的执行顺序 (知乎)  
     var初始化变量 => init 方法  => main方法执行
    init_zhihu_learn/demo1/main/main.go:32
    
    init方法 => init方法 依赖的方法 => main 方法执行
    init_zhihu_learn/demo2/main/main.go:15
    
### 遇到个好玩的
    形如 var _ int = a() 可能不会被初始化
    init_zhihu_learn/demo3/main/sandbox.go    
    原因需要看看源码

### init 方法不能被显示调用会报错
    init_zhihu_learn/demo4/main/main.go

### 可以被定义多次
    init_zhihu_learn/demo5/main/main.go

### 初始化 表达式不能初始化的变量
    init_zhihu_learn/demo6/main/main.go
    
            
## 重新理解 编程规范中的init方法使用    
尽可能避免使用init()。当init()是不可避免或可取的，代码应先尝试：
1. 无论程序环境或调用如何，都要完全确定。 // 自己理解：init方法只能用来完成 一步无法完成的操作。 （例如变量定义和初始化 能一行代码实现 绝对不用init方法）
2. 避免依赖于其他init()函数的顺序或副作用。虽然init()顺序是明确的，但代码可以更改， 因此init()函数之间的关系可能会使代码变得脆弱和容易出错。
3. 避免访问或操作全局或环境状态，如机器信息、环境变量、工作目录、程序参数/输入等。
4. 避免I/O，包括文件系统、网络和系统调用。


考虑到上述情况，在某些情况下，init()可能更可取或是必要的，可能包括：
不能表示为单个赋值的复杂表达式。
可插入的钩子，如database/sql、编码类型注册表等。
对Google Cloud Functions和其他形式的确定性预计算的优化。


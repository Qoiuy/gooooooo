
# 主函数退出方式....
## 使用 os.Exit 或 log.Fatal* 退出
don't panic

## 仅在main()函数中使用 os.Exit 或 log.Fatal* 
其他函数不允许使用log.Fatal
参考 badCode( 指导原则/主函数退出方式/uber_demo_learn/demo1/main/main.go:18
    goodCode( 指导原则/主函数退出方式/uber_demo_learn/demo2/main/main.go:21
    
    
## 原则上 
    退出的具有多种功能的程序存在一些问题：
    
    不明显的控制流：任何函数都可以退出程序，因此很难对控制流进行推理。 (难以推理逻辑)
    难以测试：退出程序的函数也将退出调用它的测试。这使得函数很难测试，并引入了跳过 go test 尚未运行的其他测试的风险。 (可以直接终止go test)
        验证代码 参考 ( 指导原则/主函数退出方式/uber_demo_learn/demo3/main/main_test.go:8
    跳过清理：当函数退出程序时，会跳过已经进入defer队列里的函数调用。这增加了跳过重要清理任务的风险。( 跳过defer ?)
        验证代码 参考 ( 指导原则/主函数退出方式/uber_demo_learn/demo4/main/main.go:37


## 简化main函数
badCode ( 指导原则/主函数退出方式/uber_demo_learn/demo5/main/main.go:9
goodCode ( 指导原则/主函数退出方式/uber_demo_learn/demo6/main/main.go:11         
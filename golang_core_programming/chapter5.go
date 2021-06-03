package golang_core_programming

import (
	"net/http"
	"runtime"
	"sync"
	"time"
)

// 5.1.2 第一个例子
func topic512a() {

	go func() {
		sum := 0
		for i := 0; i < 10000; i++ {
			sum += i
		}
		println(sum)
		time.Sleep(1 * time.Second)
	}()
	// 可以返回当前程序的  goroutine 数目
	println("NumGoroutine=", runtime.NumGoroutine())

	// 故意  "sleep" 5 秒, 防止 提前退出程序
	time.Sleep(5 * time.Second)
}

func sum() {
	sum := 0
	for i := 0; i < 10000; i++ {
		sum += i
	}
	println(sum)
	time.Sleep(1 * time.Second)
}

// 5.1.2 第一个例子
func topic512b() {
	go sum()
	// 可以返回当前程序的  goroutine 数目
	println("NumGoroutine=", runtime.NumGoroutine())

	// 故意  "sleep" 5 秒, 防止 提前退出程序
	time.Sleep(5 * time.Second)
}

func topic512c() {
	//获取当前 GOMAXPROCS 的值
	println("GOMAXPROCS=", runtime.GOMAXPROCS(0))

	//设置 GOMAXPROCS的值为2
	runtime.GOMAXPROCS(2)

	//获取当前 GOMAXPROCS 的值
	println("GOMAXPROCS=", runtime.GOMAXPROCS(0))

}

func topic513a() {
	c := make(chan struct{})
	go func(i chan struct{}) {
		sum := 0
		for i := 0; i < 10000; i++ {
			sum += i
		}
		println(sum)
		c <- struct{}{}
	}(c)
	// 可以返回当前程序的  goroutine 数目
	println("NumGoroutine=", runtime.NumGoroutine())

	// 读通道C 通过通道进行同步等待
	<-c
}

func topic513b() {
	c := make(chan struct{})
	ci := make(chan int, 100)
	go func(i chan struct{}, j chan int) {
		sum := 0
		for i := 0; i < 10000; i++ {
			sum += i
		}
		close(ci)
		// 写通道
		c <- struct{}{}
	}(c, ci)
	// 可以返回当前程序的  goroutine 数目
	println("NumGoroutine=", runtime.NumGoroutine())

	// 读通道C 通过通道进行同步等待
	<-c

	// 此时ci通道已经关闭, 匿名函数启动的goroutine已经退出
	println("NumGoroutine=", runtime.NumGoroutine())

	// 但是通道ci还可以继续读取
	for v := range ci {
		println(v)
	}

}

func topic514a() {
	var wg sync.WaitGroup
	var urls = []string{
		"http://www.baidu.com",
		"http://www.github.com",
		"http://www.qq.com",
	}

	for _, url := range urls {

		// 每一个url启动一个goroutine 同时给wg加1
		wg.Add(1)

		//Launch  a goroutine to fetch the URL
		go func(url string) {
			//当前goroutine结束后给wg计数减1, wg.Done()等价于wg.Add(-1)
			//defer wg.Add(-1)
			defer wg.Done()

			// 发送 http get请求并打印http返回码

			resp, err := http.Get(url)
			if err == nil {
				println(resp.Status)
			}
		}(url)
		wg.Wait()
	}
}

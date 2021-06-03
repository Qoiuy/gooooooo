package golang_core_programming

import "testing"

func Test_topic_5_1_2(t *testing.T) {
	tests := []struct {
		name string
	}{
		{" 通过 'go + 函数 ' 形式启动 goroutine"},
		//NumGoroutine= 4
		//49995000
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			topic512a()
		})
	}
}

func Test_topic512b(t *testing.T) {
	tests := []struct {
		name string
	}{
		{" 通过 'go + 有名函数 ' 形式启动 goroutine"},
		//NumGoroutine= 4
		//49995000
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			topic512b()
		})
	}
}

func Test_topic512c(t *testing.T) {
	tests := []struct {
		name string
	}{
		{"GOMAXPROC 用来设置可以并发执行的goroutine数目 n大于1表示设置的GOMAXPROCS值, "},
		//GOMAXPROCS= 8
		//GOMAXPROCS= 2
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			topic512c()
		})
	}
}

func Test_topic513a(t *testing.T) {
	tests := []struct {
		name string
	}{
		{"有了通道(chan) 后,可以使用无缓冲的通道来实现goroutine的同步等待 "},
		//NumGoroutine= 4
		//NumGoroutine= 3
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			topic513a()
		})
	}
}
func Test_topic513b(t *testing.T) {
	tests := []struct {
		name string
	}{
		{"goroutinue 运行结束后退出，写到缓冲通道中的数据不会消失," +
			"他可以缓冲和适配两个goroutine处理速率不一致的情况," +
			"缓冲通道和消息队列类似,有削峰和增大吞吐量的功能"},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			topic513b()
			//NumGoroutine= 4
			//NumGoroutine= 3
		})
	}
}

func Test_topic514a(t *testing.T) {
	tests := []struct {
		name string
	}{
		{"演示如何使用sync.WaitGroup完成多个ggoroutine间的协同工作"},
		//200 OK
		//200 OK
		//200 OK
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			topic514a()
		})
	}
}

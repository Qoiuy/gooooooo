package main

//这样写完  error 任何操作都无法使用了
var error string

// `error` 作用域隐式覆盖

func handleErrorMessage(error string) {
	// `error` 作用域隐式覆盖
}

func main() {
	// 不能使用error包了
	//var err error
	//fmt.Println("err: ", err)
}

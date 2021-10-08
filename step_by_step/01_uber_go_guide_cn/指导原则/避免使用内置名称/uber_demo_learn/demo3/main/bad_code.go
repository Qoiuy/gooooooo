package main

type BadFoo struct {
	// 虽然这些字段在技术上不构成阴影，但`error`或`string`字符串的重映射现在是不明确的。
	error error

	string string
}

func (f BadFoo) Error() error {
	// `error` 和 `f.error` 在视觉上是相似的
	return f.error
}
func (f BadFoo) String() string {
	// `string` and `f.string` 在视觉上是相似的
	return f.string
}

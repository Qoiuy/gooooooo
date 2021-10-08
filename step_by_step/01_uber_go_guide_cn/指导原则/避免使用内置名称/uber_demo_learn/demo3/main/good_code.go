package main

type GoodFoo struct {
	// `error` and `string` 现在是明确的。
	err error
	str string
}

func (f GoodFoo) Error() error {
	return f.err
}
func (f GoodFoo) String() string {
	return f.str
}

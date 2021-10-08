package main

var goodDefaultFoo1 = Foo{}

// or, 为了更好的可测试性:
var goodDefaultFoo2 = defaultFoo()

func defaultFoo() Foo {
	return Foo{
		// ...
	}
}

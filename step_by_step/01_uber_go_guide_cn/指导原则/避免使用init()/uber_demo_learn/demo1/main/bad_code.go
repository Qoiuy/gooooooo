package main

// bad code
var badDefaultFoo Foo

func init() {
	badDefaultFoo = Foo{
		// ..
	}
}

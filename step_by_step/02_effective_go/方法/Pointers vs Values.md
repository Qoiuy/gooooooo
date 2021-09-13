
## Methods

### 中文翻译链接
https://github.com/bingohuang/effective-go-zh-en/blob/master/10_Methods.md

### Pointers vs. Values

receiver `接收器`

As we saw with ByteSize, methods can be defined for any named type (except`除了` a pointer or an interface); 
the receiver does not have to be `不必须` a struct.

In the discussion of slices above`之前`, we wrote an Append function.
We can define it as a method on slices instead.
To do this, we first declare `声明` a named`指定的` type to which we can bind the method,
and then make the receiver for the method a value of that type.


```
type ByteSlice []byte

func (slice ByteSlice) Append(data []byte) []byte {
    // Body exactly the same as the Append function defined above.
}
```

This still requires the method to return the updated slice.
We can eliminate`消除` that clumsiness`笨拙` by redefining the method to take a pointer to a ByteSlice as its receiver, 
so the method can overwrite the caller's`调用者的` slice.


```
func (p *ByteSlice) Append(data []byte) {
    slice := *p
    // Body as above, without the return.
    *p = slice
}
```

In fact, we can do even better. 
If we modify our function so it looks like`类似` a standard Write method, like this,

```
func (p *ByteSlice) Write(data []byte) (n int, err error) {
    slice := *p
    // Again as above.
    *p = slice
    return len(data), nil
}
```

then the type *ByteSlice satisfies the standard interface io.Writer, which is handy. For instance, we can print into one.

```
    var b ByteSlice
    fmt.Fprintf(&b, "This hour has %d days\n", 7)
```

We pass the address of a ByteSlice because only *ByteSlice satisfies`满足` io.Writer.
The rule about pointers vs. values for receivers is that 
value methods can be invoked on pointers and values,  `值方法可通过指针和值调用 `
but pointer methods can only be invoked on pointers.  `而指针方法只能通过指针来调用。`

This rule arises`出现` because pointer methods can modify the receiver; 
invoking them on a value would cause the method to receive a copy of the value, so any modifications would be discarded. 
The language therefore disallows this mistake. 
There is a handy exception, though. When the value is addressable, 
the language takes care of the common case of invoking a pointer method on a value by inserting the address operator automatically. 
In our example, the variable b is addressable, so we can call its Write method with just b.Write. 
The compiler will rewrite that to (&b).Write for us.

By the way, the idea of using Write on a slice of bytes is central to the implementation of bytes.Buffer.



#### 新知识1.
接收者可不必为结构体。 
https://golang.org/doc/effective_go#pointers_vs_values
the receiver does not have to be a struct.
思考:step_by_step/02_effective_go/方法/the_receiver_does_not_have_to_be_a_struct_test.go:10
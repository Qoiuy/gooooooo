package main

func a(i int) func() {
	return func() {
		print(i)
	}
}
func main() {
	f := a(1)
	f()
}

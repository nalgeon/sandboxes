package main

import "solod.dev/so/fmt"

func greet(name string) {
	fmt.Printf("Hello, %s!\n", name)
}

func main() {
	greet("World")
}

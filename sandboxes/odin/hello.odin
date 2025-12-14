package main

import "core:fmt"

greet :: proc(name: string) {
    fmt.printf("Hello, %s!\n", name)
}

main :: proc() {
    greet("World")
}

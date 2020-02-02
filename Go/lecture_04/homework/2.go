package main

import "fmt"

func main() {
    hanoi(3, 'a', 'b', 'c')
}
 
func hanoi(n int, a, b, c byte) {
    if n > 1 {
        hanoi(n-1, a, c, b)
        fmt.Printf("moving disk %d from pole %c to pole %c\n", n, a, c)
        hanoi(n-1, b, a, c)
        fmt.Printf("moving disk %d from pole %c to pole %c\n", n, b, a)
    } else {
        fmt.Printf("moving disk %d from pole %c to pole %c\n", n, a, c)
    }
}


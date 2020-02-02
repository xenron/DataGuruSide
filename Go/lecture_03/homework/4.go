package main

import "fmt"
import "strings"

func main() {
    for i := 0; i<8 ; i++ {
        fmt.Println(strings.Repeat("G", i))
    }
}

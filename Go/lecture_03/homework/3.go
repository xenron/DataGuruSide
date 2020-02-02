package main

import "fmt"

func main() {
    for i := 0; i<8 ; i++ {
        for j := 0; j<8 ; j++ {
            if i > j {
                fmt.Print("G")
            }
        }
        fmt.Println("")
    }
}

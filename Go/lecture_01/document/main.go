// week1 project main.go
package main

import "fmt"

func createMessage(name string) string {

	if len(name) == 0 {
		return "Hello world"
	} else {
		return "Hello " + name
	}
}

func main() {

	fmt.Println(createMessage("Tom"))
	fmt.Println(createMessage(""))
}

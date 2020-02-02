// week10 project main.go
package main

import (
	"fmt"
)

func main() {
	var firstName, lastName string

	fmt.Print("Enter name:")
	fmt.Scanf("%s %s", &firstName, &lastName)
	fmt.Println(fmt.Sprintf("Hello %s %s", firstName, lastName))

	fmt.Print("Enter your name:")
	fmt.Scanln(&firstName, &lastName)
	fmt.Println(fmt.Sprintf("welcome, %s %s", firstName, lastName))
}

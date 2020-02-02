// week3 project main.go
package main

import (
	"fmt"
)

func sayHello(age int) {

	// if example
	if age <= 12 {
		fmt.Println("Hello child!")
	} else if age >= 13 && age < 18 {
		fmt.Println("Hello teenager")
	} else {
		fmt.Println("Hi")
	}
}

func anotherSayHi(age int) {

	switch {
	case age <= 12:
		fmt.Println("Hello child")
	case age > 12 && age < 18:
		fmt.Println("Hello teenager")
	default:
		fmt.Println("Hi")
	}
}

func main() {

	// for example
	ages := make([]int, 20)

	for i := 0; i < len(ages); i++ {
		ages[i] = 5 + i
	}

	idx := 0
	for idx < len(ages) {

		fmt.Printf("age: %d\r\n", ages[idx])
		anotherSayHi(ages[idx])
		idx++
	}

	/*age_label:
	for index, age := range ages {

		if age <= 12 {
			continue
		} else if age > 18 {
			break age_label
		}

		fmt.Printf("age: %d\r\n", age)
		sayHello(ages[index])
	}*/
}

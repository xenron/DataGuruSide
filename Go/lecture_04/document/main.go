// week4 project main.go
package main

import (
	"fmt"
)

func message(funcName, message string) {

	fmt.Println(funcName + " produced: " + message)
}

func trace(funcName string) string {

	fmt.Println("entering " + funcName)
	return funcName
}

func un(funcName string) {

	fmt.Println("leaving " + funcName)
}

func changeValue(value *int) {

	*value = 3
}

func getValues() (int, int) {

	return 1, 2
}

func getName() (name string) {

	name = "Tom"
	return
}

func f() (ret int) {
	defer func() {
		ret++
	}()
	return 2
}

func hello(value string) {

	defer un(trace("hello"))
	fmt.Println("Hello " + value)
	defer message("hello", "test message")
}

func main() {
	hello(getName())
	a, _ := getValues()
	changeValue(&a)
	fmt.Println(a)

	defer fmt.Println(f())
}

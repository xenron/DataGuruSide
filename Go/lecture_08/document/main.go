// week8 project main.go
package main

import (
	"fmt"
	"unsafe"
)

type A struct {
	a int32
	b string
}

type B struct {
	A
	c bool
}

func (a *A) shout() {

	fmt.Println("A shouts")
}

func (b *B) shout() {

	fmt.Println("B shouts")
}

type MyString string

func (s *MyString) hash() int {

	return 100
}

func main() {
	var a A
	var b B

	fmt.Println(fmt.Sprintf("size of A, %d", unsafe.Sizeof(A{})))
	fmt.Println(fmt.Sprintf("size of B, %d", unsafe.Sizeof(B{})))

	fmt.Println(fmt.Sprintf("value of B.c, %v", b.c))
	c := &b
	c.c = true
	fmt.Println(fmt.Sprintf("value of B.c, %v", b.c))
	fmt.Println(fmt.Sprintf("size of c, %d", unsafe.Sizeof(c)))

	a.shout()
	b.shout()

	d := MyString("")
	fmt.Println(fmt.Sprintf("hash of string is %d", d.hash()))
}

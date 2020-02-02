// week11 project main.go
package main

import (
	"fmt"
)

type PathError struct {
	Op   string // "open", "unlink", etc.
	Path string // The associated file.
	Err  error  // Returned by the system call.
}

func (e *PathError) String() string {
	return e.Op + " " + e.Path + ": " + e.Err.Error()
}

func badCall() {
	panic("bad end")
}

func test() {
	defer func() {
		if e := recover(); e != nil {
			fmt.Printf("Panicking %s\r\n", e)
		}
	}()
	badCall()
	fmt.Printf("After bad call\r\n")
}

func main() {
	/*defer func() {
		if err := recover(); err != nil {
			fmt.Println(fmt.Sprintf("run time panic: %v", err))
			fmt.Println("in defer")
		}
	}()

	fmt.Println("Starting the program")
	panic("A severe error occurred: stopping the program!")
	fmt.Println("Ending the program")*/

	fmt.Printf("Calling test\r\n")
	test()
	fmt.Printf("Test completed\r\n")
}

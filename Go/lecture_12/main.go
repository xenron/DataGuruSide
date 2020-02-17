// week12 project main.go
package main

import (
	"fmt"
	"time"
)

func sendData(ch chan string) {
	ch <- "Washington"
	ch <- "Tripoli"
	ch <- "London"
	ch <- "Beijing"
	ch <- "Tokyo"
}

func getData(ch chan string) {
	var input string
	for {
		input = <-ch
		fmt.Printf("%s ", input)
	}
	fmt.Println("")
}

func main() {
	/*fmt.Println("In main()")
	go longWait()
	go shortWait()
	fmt.Println("About to sleep in main()") // sleep works with a Duration in nanoseconds (ns) !
	time.Sleep(10 * 1e9)
	fmt.Println("At the end of main()")

	ch := make(chan string)
	go sendData(ch)
	go getData(ch)
	time.Sleep(1e9)*/

	ch1 := make(chan int)
	go pump(ch1)       // pump hangs
	fmt.Println(<-ch1) // prints only 0

	suck(pumpChan())
	time.Sleep(1e9)
}

func pump(ch chan int) {
	for i := 0; ; i++ {
		ch <- i
	}
}

func longWait() {
	fmt.Println("Beginning longWait()")
	time.Sleep(5 * 1e9) // sleep for 5 seconds
	fmt.Println("End of longWait()")
}

func shortWait() {
	fmt.Println("Beginning shortWait()")
	time.Sleep(2 * 1e9) // sleep for 2 seconds
	fmt.Println("End of shortWait()")
}

func pumpChan() chan int {
	ch := make(chan int)
	go func() {
		for i := 0; i < 100; i++ {
			ch <- i
		}
	}()
	return ch
}

func suck(ch chan int) {
	go func() {
		for v := range ch {
			fmt.Println(v)
		}
	}()
}

// week7 project main.go
package main

import (
	"fmt"
	"regexp"
	"strconv"
	"sync"
)

type Value struct {
	mutex sync.Mutex
	value int
}

var val Value
var group sync.WaitGroup
var index int = 0

func inc() {

	val.mutex.Lock()
	defer val.mutex.Unlock()
	defer group.Done()

	val.value++
	fmt.Println(fmt.Sprintf("value is %d", val.value))
}

func regex() {
	// string to search
	searchIn := "John: 2578.34 William: 4567.23 Steve: 5632.18"
	pat := "[0-9]+.[0-9]+"
	// pattern to search for in searchIn

	f := func(s string) string {
		v, _ := strconv.ParseFloat(s, 32)

		return strconv.FormatFloat(v*2, 'f', 2, 32)
	}

	if ok, _ := regexp.Match(pat, []byte(searchIn)); ok {
		fmt.Println("Match found!")
	}

	re, _ := regexp.Compile(pat)
	// replace pat with "##.#"
	str := re.ReplaceAllString(searchIn, "##.#")
	fmt.Println(str)

	// using a function :
	str2 := re.ReplaceAllStringFunc(searchIn, f)
	fmt.Println(str2)
}

func main() {
	m := sync.Mutex{}
	condition := sync.NewCond(&m)

	regex()

	for i := 0; i < 5; i++ {
		group.Add(1)
		go inc()
	}
	group.Wait()

	condition.L.Lock()
	go func() {

		condition.L.Lock()
		index = 10
		fmt.Println(fmt.Sprintf("index is %d, in child routine", index))
		condition.L.Unlock()
		condition.Broadcast()
	}()

	fmt.Println("main goroutine owns the lock on condition")
	condition.Wait()
	fmt.Println(fmt.Sprintf("index is %d in main routine", index))
}

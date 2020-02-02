// week6 project main.go
package main

import (
	"fmt"
	"sort"
)

var (
	barVal = map[string]int{"alpha": 34, "bravo": 56,
		"charlie": 23, "delta": 87,
		"echo": 56, "foxtrot": 12,
		"golf": 34, "hotel": 16,
		"indio": 87, "juliet": 65,
		"kilo": 43, "lima": 98}
)

func forRange() {
	map1 := make(map[int]float32)
	map1[1] = 1.0
	map1[2] = 2.0
	map1[3] = 3.0
	map1[4] = 4.0

	for key, value := range map1 {
		fmt.Printf("key is: %d - value is: %f\n", key, value)
	}

	for key := range map1 {
		fmt.Println(fmt.Sprintf("Key is %d", key))
	}
}

func invert() {
	invMap := make(map[int]string /*, len(barVal)*/)

	for k, v := range barVal {
		invMap[v] = k
		fmt.Println(fmt.Sprintf("%s: %d", k, v))
	}
	fmt.Println("")
	fmt.Println("inverted:")

	for k, v := range invMap {
		fmt.Printf("Key: %v, Value: %v / ", k, v)
	}
}

func sortMap() {
	fmt.Println("unsorted:")
	for k, v := range barVal {
		fmt.Printf("Key: %v, Value: %v / ", k, v)
	}

	keys := make([]string, len(barVal))
	i := 0

	for k, _ := range barVal {
		keys[i] = k
		i++
	}
	sort.Strings(keys)
	fmt.Println()
	fmt.Println("sorted:")

	for _, k := range keys {
		fmt.Printf("Key: %v, Value: %v / ", k, barVal[k])
	}
}

func main() {
	forRange()
	sortMap()
	invert()
}

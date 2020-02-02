// week6 project main.go
package main

import (
    "fmt"
    "sort"
)

// 创建一个map，将英文的水果名称和中文的名称进行对应
// 先打印出所有中文水果的名称，然后再打印所有英文水果的名称
// 英文水果的名称必须按照字母排序
var (
    fruitMap = map[string]string{
        "apple": "苹果",
        "pear": "梨",
        "banana": "香蕉",
    }
)

func sortFruitMap() {
    fmt.Println("unsorted:")
    for k, v := range fruitMap {
        fmt.Printf("Key: %v, Value: %v / ", k, v)
    }

    i := 0
    keys := make([]string, len(fruitMap))
    for k, _ := range fruitMap {
        keys[i] = k
        i++
    }
    sort.Strings(keys)

    fmt.Println()
    fmt.Println("sorted:")
    for _, k := range keys {
        fmt.Printf("Key: %v, Value: %v / ", k, fruitMap[k])
    }
}

func main() {
    sortFruitMap()
}

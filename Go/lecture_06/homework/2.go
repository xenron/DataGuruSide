// week6 project main.go
package main

import (
    "fmt"
)

// 创建一个map，保存学生的学号、分数（学号类型为字符串）
// 可以根据学号查询分数，可以删除学生记录
// 可以根据分数查询所有分数相同的学生并输出学号列表
var (
    studentMap = map[string]int{
        "101": 83,
        "102": 96,
        "103": 91,
        "104": 83,
    }
)

func searchStudent(no string) {
    for k, v := range studentMap {
        if k == no {
            fmt.Printf("No: %v, Score: %v", k, v)
            fmt.Println()
            break
        }
    }
}

func deleteStudent(no string) {

    fmt.Println("before delte:")
    for k, v := range studentMap {
        fmt.Printf("Key: %v, Value: %v / ", k, v)
    }
    fmt.Println()

    delete(studentMap, no)

    fmt.Println("before delte:")
    for k, v := range studentMap {
        fmt.Printf("Key: %v, Value: %v / ", k, v)
    }
    fmt.Println()
}

func filterScore(score int) {
    for k, v := range studentMap {
        if v == score {
            fmt.Printf("No: %v, Score: %v / ", k, v)
        }
    }
    fmt.Println()
}

func main() {
    searchStudent("103")
    deleteStudent("102")
    filterScore(83)
}

// 写一个函数：ConvertInt64ToInt，将int64转换为int，并在有问题时panic。
// 在函数IntFromInt64中调用ConvertIn64ToInt，并在调用函数中进行recover，返回int和error，写单元测试
// 写一个Reverse函数，将一个字符串参数反转并将反转结果作为函数返回值返回，对Reverse进行单元测试
package main

import (
    "fmt"
    "reflect"
    "strconv"
    // "testing"
)

func except()  {
    recover()
}

func ConvertInt64ToInt(content int64) int {
    // panic("abc")
    strInt64 := strconv.FormatInt(content, 10)
    result ,_ := strconv.Atoi(strInt64)
    fmt.Println(result)
    fmt.Println(reflect.TypeOf(result))
    return result
}

func IntFromInt64(content int64) int {
    defer except()
    result := ConvertInt64ToInt(content)
    return result
}

func IntFromInt64_test(content int64) {
    IntFromInt64(content)
}

func Reverse(content string) string{
    // panic("bad end")
    fmt.Println(content)
    var reslut []byte
    for i := len(content) - 1; i >= 0; i-- {
        reslut = append(reslut, content[i])
    }
    str2 := string(reslut)
    fmt.Println(str2)
    return str2
}

func main() {
    fmt.Printf("Calling ConvertInt64ToInt\r\n")
    ConvertInt64ToInt(20)
    fmt.Printf("Calling completed\r\n")

    fmt.Printf("Calling Reverse\r\n")
    Reverse("abcdefg")
    fmt.Printf("Reverse completed\r\n")
}

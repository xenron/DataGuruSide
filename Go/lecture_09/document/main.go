// week9 project main.go
package main

import (
	"fmt"
	"reflect"
)

type Student struct {
	Name  string
	Age   int
	Grade int
}

type Teacher struct {
	Name   string
	Age    int
	Salary float64
}

func (student Student) Talk() {

	fmt.Println("I'm a student")
}

func (teacher Teacher) Talk() {

	fmt.Println("I'm a teacher")
}

type Human interface {
	Talk()
}

func main() {

	var person Human

	person = &Student{"Tom", 10, 90}
	person.Talk()

	fmt.Println("type of person:", reflect.TypeOf(person))
	fmt.Println("kind of:", reflect.TypeOf(person).Kind())

	p := &Teacher{"Smith", 30, 10000}
	p.Talk()

	t := reflect.TypeOf(*p)
	fmt.Println("number of fields:", t.NumField())
	v := reflect.ValueOf(*p)
	fmt.Println("value of *p", v)

	for i := 0; i < v.NumField(); i++ {

		fmt.Println("field type:", v.Field(i).Type())
		fmt.Println("can set:", v.Field(i).CanSet())
		fmt.Println("value:", v.Field(i).Interface())
	}

	fmt.Println("can addr:", v.Field(1).CanAddr())

	for i := 0; i < t.NumField(); i++ {
		fmt.Println("field type:", t.Field(i).Type)
		fmt.Println("field value:", t.Field(i))
		fmt.Println("tag is", t.Field(i).Tag)
		tag := t.Field(i).Tag
	}

	b := 10
	fmt.Println("value of &b", reflect.ValueOf(&b))
	c := reflect.ValueOf(&b).Elem()
	c.SetInt(20)
	fmt.Println("value of b", b)
}

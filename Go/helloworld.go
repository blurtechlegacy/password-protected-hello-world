package main

import "fmt"

func main() {
  fmt.Println("Please enter your password")
  var password string
  fmt.Scanln(& password)

    if password == "OpenSource"{ 
        fmt.Println("Hello World!!")
    }else{
        fmt.Println("Invalid password")
    }
}
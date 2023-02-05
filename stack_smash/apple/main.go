package main

import (
    "time"
    "fmt"
)
func main() {
    start := time.Now()
    for i := 0; i < 1000; i++ {

    }
    duration := time.Since(start)
    fmt.Println(duration.Nanoseconds())
    start = time.Now()
    for i := 0; i < 1000; i++ {

    }
    duration = time.Since(start)
    fmt.Println(duration.Nanoseconds())
}

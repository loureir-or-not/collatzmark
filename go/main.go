package main

import (
	"fmt"
	"strings"
)

func Collatz(x int) int {
	if x%2 == 0 {
		return x / 2
	}

	return 3*x + 1
}

func CollatzSequence(x int) string {
	var sb strings.Builder
	fmt.Fprintf(&sb, "%d: ", x)
	for i := Collatz(x); i != 1; i = Collatz(i) {
		fmt.Fprintf(&sb, "%d, ", i)
	}

	sb.WriteString("1")

	return sb.String()
}

func main() {
	for i := 1; i <= 10000; i++ {
		fmt.Printf("%s\n", CollatzSequence(i))
	}
}

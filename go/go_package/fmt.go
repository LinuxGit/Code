package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Fprintln(os.Stdout, "Hello, world!\n")
	fmt.Fprintf(os.Stdout, "%v", "Let it go.\n")
}

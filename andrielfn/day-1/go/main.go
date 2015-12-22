package main

import (
	"fmt"
	"io/ioutil"
	"log"
)

func main() {
	bytes, err := ioutil.ReadFile("./input")
	if err != nil {
		log.Fatal(err)
	}

	basementIndex := 0

	s := newSanta()

	for i, byte := range bytes {
		s.move(byte)

		if s.isOnFloor(-1) && basementIndex == 0 {
			basementIndex = i
		}
	}

	fmt.Println("To what floor do the instructions take Santa?")
	fmt.Println("R:", s.floor)

	fmt.Println("What is the position of the character that causes Santa to first enter the basement?")
	fmt.Println("R:", basementIndex)
}

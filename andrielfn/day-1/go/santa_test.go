package main

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestSantaMoveUp(t *testing.T) {
	s := newSanta()

	s.move(up)

	assert.Equal(t, s.floor, 1, "should be equal")
}

func TestSantaMoveDown(t *testing.T) {
	s := newSanta()

	s.move(down)

	assert.Equal(t, s.floor, -1, "should be equal")
}

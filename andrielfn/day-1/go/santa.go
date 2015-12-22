package main

const (
	up   = 40 // Byte code for "(".
	down = 41 // Byte code for ")".
)

type santa struct {
	floor int
}

// newSanta creates a new Santa presents delivery on floor 0.
func newSanta() *santa {
	return &santa{floor: 0}
}

// move moves the Santa to a different floor based on the given byte.
//
// When byte 40 ("(") is received, Santa goes up.
// When byte 41 (")") is received, Santa goes down.
func (s *santa) move(direction byte) {
	if direction == up {
		s.floor++
	} else if direction == down {
		s.floor--
	}
}

// isOnFloor checks if the Santa is in the given floor.
func (s *santa) isOnFloor(floor int) bool {
	return s.floor == floor
}

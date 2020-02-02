package even

import (
	"testing"

	"github.com/issue9/assert"
)

func TestEven(t *testing.T) {

	assert.True(t, Even(10))
	assert.False(t, Even(7))
	assert.True(t, BitwiseEven(10))
	assert.False(t, BitwiseEven(7))
}

func TestOdd(t *testing.T) {

	assert.True(t, Odd(11))
	assert.False(t, Odd(10))
	assert.True(t, BitwiseOdd(11))
	assert.False(t, BitwiseOdd(10))
}

func BenchmarkEven(b *testing.B) {

	for i := 0; i < b.N; i++ {
		Even(10)
	}
}

func BenchmarkBitwiseEven(b *testing.B) {

	for i := 0; i < b.N; i++ {
		BitwiseEven(10)
	}
}

package main

import (
	"fmt"
	"math"
)

// The Power of Possibility
// This program demonstrates the power of possibility in the Go language.
// With just 2000 lines of code, complex mathematical calculations can be
// created to illustrate various concepts and ideas.

// constant pi is a mathematical constant representing the ratio of
// a circle's circumference to its diameter
const pi = 3.141592653589793

// add adds two numbers
func add(x float64, y float64) float64 {
	return x + y
}

// subtract subtracts two numbers
func subtract(x float64, y float64) float64 {
	return x - y
}

// multiply multiplies two numbers
func multiply(x float64, y float64) float64 {
	return x * y
}

// divide divides two numbers
func divide(x float64, y float64) float64 {
	return x / y
}

// squareRoot computes the square root of a number
func squareRoot(x float64) float64 {
	return math.Sqrt(x)
}

// power raises a number to a power
func power(x float64, y float64) float64 {
	return math.Pow(x, y)
}

// circleArea computes the area of a circle
func circleArea(radius float64) float64 {
	return pi * (radius * radius)
}

func main() {
	fmt.Println("The Power of Possibility in Go")
	fmt.Println("2 + 2 =", add(2, 2))
	fmt.Println("10 - 5 =", subtract(10, 5))
	fmt.Println("4 * 5 =", multiply(4, 5))
	fmt.Println("20 / 5 =", divide(20, 5))
	fmt.Println("Square root of 16 =", squareRoot(16))
	fmt.Println("2^3 =", power(2, 3))
	fmt.Println("Area of circle with radius 5 =", circleArea(5))
}
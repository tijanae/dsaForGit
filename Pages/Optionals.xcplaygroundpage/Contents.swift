//: [Previous](@previous)

import Foundation
/*
// 1 a. Given the variable userNameOne below, print "The username is Test User". Use Optional Binding (if let) to print the name.
    
var userNameOne: String? = "Test User"

if let username = userNameOne {
    print("The username is \(username)")
}


// 1 b. Given the variable userNameTwo below, print "The username is undefined". Use the nil coalescing operator (??).

var userNameTwo: String? = nil

var username2 = userNameTwo ?? "The username is undefined"
print(username2)

// 2 a. Given the variables rectOneWidth and rectOneHeight below, print "The area of rectOne is 50". Use Optional Binding (if let) to print the area.

var rectOneWidth: Double? = 5
var rectOneHeight: Double? = 10

if let width = rectOneWidth , let height = rectOneHeight {
    print("The area of rectOne is \(height * width)")
}

// 2 b. Given the variables rectTwoWidth and rectTwoHeight below, print "The area of rectTwo is not able to be calculated". Use Optional Binding (if let) to print this message.

var rectTwoWidth: Double? = nil
var rectTwoHeight: Double? = nil

if let width = rectTwoWidth, let height = rectTwoHeight {
    print(width * height)
} else {
    print("The area of rectTwo is not able to be calculated")
}

// 3 a. Given the variables userOneName, userOneAge, and userOneHeight below, write code that prints "Hello Anne! You are 15 years old and 5.8 feet tall" (1 foot = 12 inches). Use optional binding.
var userOneName: String? = "Anne"
var userOneAge: Int? = 15
var userOneHeight: Double? = 70

if let name = userOneName, let age = userOneAge, let height = userOneHeight {
    print("Hello \(name)! You are \(age) years old and \(height/12) feet tall")
}

// pursuit solution: let height = String(format: "%.1f", Double(userOneHeight) / Double(12.0))

//3 b. Given the variables userTwoName, userTwoAge and userTwoHeight below, write code that prints "Hello user! You are 15 years old and I don't know how tall you are". Use optional binding

var userTwoName: String? = nil
var userTwoAge: Int? = 15
var userTwoHeight: Double? = nil

if let name2 = userTwoName, let age2 = userTwoAge, let height2 = userTwoHeight {
    print("Hello \(name2)! You are \(age2) years old and \(height2/12) feet tall")
} else {
    print("Hello user! You are 15 years old and I don't know how tall you are")
}

var name = userTwoName ?? "user"
var age = userTwoAge ?? 15
var height = userTwoHeight ?? 0


// 4. Give the variable favoriteNumber, write code that either prints "Your favorite number is " followed by the number, or "I don't know what your favorite number is"

//favoriteNumber is of type Int? and will either be nil or a random number between 0 and 10. It will change each time you run your Playground.

var favoriteNumber = Bool.random() ? Int.random(in: 0...10) : nil

if let num = favoriteNumber {
   print( "Your favorite number is \(num)")
} else {
    print("I don't know what your favorite number is")
}
 */

// 5 Given the variables numOne, numTwo and numThree, write code that prints "The sum of all the numbers is " followed by their sum. If a number is nil, don't add it to the sum. If all numbers are nil, the sum is zero.

var numOne = Bool.random() ? Int.random(in: 0...10) : nil
var numTwo = Bool.random() ? Int.random(in: 0...10) : nil
var numThree = Bool.random() ? Int.random(in: 0...10) : nil

var sum = 0

if numOne == nil && numTwo == nil && numThree == nil {
    print("The sum of all the numbers is 0")
}

if let num1 = numOne {
    print(num1)
    sum += num1
}
if let num2 = numTwo {
    print(num2)
    sum += num2
}
if let num3 = numThree {
    print(num3)
    sum += num3
}

print(sum)


//6a. Given the variable numbers below, write code that prints "The sum of all the numbers is " followed by their sum. If a number is nil, don't add it to the sum. If all numbers are nil, the sum is zero.

var numbers = [Int?]()

for _ in 0..<10 {
    numbers.append(Bool.random() ? Int.random(in: 0...100) : nil)
}

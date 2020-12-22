//: [Previous](@previous)

import Foundation


//Closure
// 1. Blocks of code that can be passed around like variables, known as first class citizens
// 2. Captures references of its surrounding context, closures are reference types


var closure: () -> () = {
    print("closure executed")
}

closure()

// Closure as function parameters and Trailing Closure syntax
func greeting(_ name: String, action: () -> ()) {
    print("Hello \(name)")
    action()
}

greeting("Bob") { // using trailing closure syntax
    print("Name has been printed")
}

// Closure as optional function parameters
func action(_ title: String, closure: (() -> ())? = nil) {
    print("The title of the action is \(title)")
// to use the optional closure use syntax below and create trailing syntax after function call
//    closure?()
}

action("learning abour closure")

// @escaping closure
class BlackJack {
//    defined a closure called gameScore
//    gameScore is an @escaping closure
//    if we use a closure as a variable in an object we have to mark it @escaping
    
    private var gameScore: (Int) -> ()
    
    init(gameScore: @escaping (Int) -> ()) {
        self.gameScore = gameScore
        play()
    }
    
    func play() {
        gameScore(Int.random(in: 18...21))
    }
}

let blackJack = BlackJack { score in
    print("score is \(score)")
    
}

// Shorthand syntax

func operation(_ a: Int, _ b: Int, action: (Int, Int) -> ()) {
    action(a, b) // action is capturing value a & b
}

operation(5, 4) { value1, value2 in// using trailing closure syntax
    print("adding values equals \(value1 + value2)")
}

operation(10, 5) { print($0 * $1)}


// Closure with arguments
let isEven: (Int) -> Bool = {return $0 % 2 == 0}
// written with implict return
// let isEven: (Int) -> Bool = { $0 % 2 == 0}

print(isEven(10))

//Closure as return types
let add: (Int, Int) -> Int = { $0 + $1}
let subtract: (Int, Int) -> Int = {$0 - $1}

func randomOperation() -> (Int, Int) -> Int {
    let operations = [add, subtract]
    return operations.randomElement() ?? add
}

let operation2 = randomOperation()
print(operation2(5, 8))

// Built-in closure - map, filter, reduce, sorted, compactMap
// higher order function is a function that takes another function or returns a function

// map - transforms element in a collection and returns the resulting array

let mapArr = [1, 2, 3, 4]
let squareResults = mapArr.map { $0 * $0}
// map takes only one arguement

print(squareResults)

// filter- returns an array of filtered results based on a given condition (predicate)
let filterArr = [1, 2, 3, 4, 5, 6, 7]
let filteredResults = filterArr.filter{ $0 > 4} // (T) -> Bool  or (Int) -> Bool
let filtered2 = filterArr.filter{ $0 % 2 == 0}

// reduce - combines values given a closure

let values = [1, 2, 10]
let sum = values.reduce(0, +)

// sorted

let chars: [Character] = ["z", "a", "d"]
let sortedChars = chars.sorted {$0 > $1}
print( sortedChars)


// compactMap - removes nil values
let grades = ["89", "90", "ninety", "75", "eighty"] //
let validGrades = grades.compactMap{ Int($0)} // Int(String) is a  failable initializer
print(validGrades)

//chaining closure
let result = [1, nil, 5].compactMap{ $0}.map{$0 * $0}
print(result) // 26

// Challenge: Rewrite the built-in filter function



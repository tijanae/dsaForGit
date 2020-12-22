

import Foundation

// tuple is a comma seperated list of types

let fullName = ("Alex", "Paul")

// acessing a tuple

print("Full name is \(fullName.0) \(fullName.1)")

// tuples as return types
func blackJack() -> (Int, Bool, String) {
    let score = Int.random(in: 18...21)
    
    if score == 21 {
        return (score, true, "Black JAcK!!!")
    }
    return (score, false, "Better Luck Next Time")
}

print(blackJack())


// tuples in switches

let coordinate  = (40.71, 74.00)

switch coordinate {
case (39..., _):
    print("Approaching New york")
default:
    print("not close yet")
}

// we can use labels on tuples instead of accessing by .0, .1 etc

var date: (month: String, day: Int) = ("November", 27)

print("Today is \(date.month) \(date.day)")

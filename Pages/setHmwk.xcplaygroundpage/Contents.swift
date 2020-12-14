//: [Previous](@previous)

import Foundation

// 1. Create a new array numbersWithNoDuplicates that has all of the elements from numbers without any duplicates. It should be in the same order as the original.

let numbers = [1,1,2,4,4,4,6,6,7,8]

var numbersWithNoDuplicates = [Int]()

//you could just type cast from the door- but solution declares looping through- seemingly the arent the same type.

//pursuitSolution
/*
 let numbers = [1,1,2,4,4,4,6,6,7,8]

 var numbersWithNoDuplicates = [Int]()

 var set: Set<Int> = []

 for num in numbers {
   if !set.contains(num) {
     numbersWithNoDuplicates.append(num)
     set.insert(num)
   }
 }

 print(numbersWithNoDuplicates) // [1, 2, 4, 6, 7, 8]
 

print(numbersWithNoDuplicates)
*/

// 2. Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once. It should be in the same order as the original.

let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]

var scoresThatAppearOnce = [Int]()

var arrSet: Set<Int> = []

var scoreDict = [Int : Int]()

for num in scores {
    
    if !arrSet.contains(num) {
        scoreDict[num] = 1
        arrSet.insert(num)
        
    } else {
        scoreDict[num]! += 1
    }
    
}


print(scoreDict)


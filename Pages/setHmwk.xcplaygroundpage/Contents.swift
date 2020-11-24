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
 */

print(numbersWithNoDuplicates)

//: [Previous](@previous)

import Foundation

// 1. Write a function named applyKTimes that takes an integer K and a closure and calls the closure K times. The closure will not take any parameters and will not have a return value.

func applyKTimes(_ int: Int, closure: () -> ()) {
    for _ in 0..<int {
        closure()
    }
}


var myVal = 0

applyKTimes(5) {
  myVal += 1
}

print(myVal)


// 2. Write a function called multiples(of:in) that takes in an array of Ints and returns all of the Ints that are a multiple of a given number n. Use filter in your function.

// input: [1, 2, 3, 4, 6, 8, 9, 3, 12, 11], n = 3
// output: [3, 6, 9, 3, 12]

func multiples(_ arr: [Int], num: Int ) -> [Int] {
    
    var arr2 = arr.filter{ $0 % num == 0}
    
    return arr2
}

// 3. Write a function called largestValue(in:) that finds the largest Int in an array of Ints. Use reduce to solve this exercise.

// input: [4, 7, 1, 9, 6, 5, 6, 9]
// output: 9

//func largestValue(_ arr: [Int]) -> Int {
//    arr.reduce(0, >)
//}
//
//let moreNumbers = [4, 7, 1, 9, 6, 5, 6, 9]

//pursuitSolution
/*
 func largestValue(in numbers: [Int]) -> Int {
   guard !numbers.isEmpty else { return -1 }
   let result = numbers.reduce(Int.min) { (previousResult, currentValue) -> Int in
     if previousResult > currentValue {
       return previousResult
     }
     return currentValue
   }
   return result
 }

 let moreNumbers = [4, 7, 1, 9, 6, 5, 6, 9]

 print(largestValue(in: moreNumbers)) // 9
 */


// 4.Write a function called sortedNamesByLastName(in:) that takes in an array of tuples of type (String, String) and returns an array of tuples sorted ascending by last name.

// input:
let firstAndLastTuples = [
    ("Johann S.", "Bach"),
    ("Claudio", "Monteverdi"),
    ("Duke", "Ellington"),
    ("W. A.", "Mozart"),
    ("Nicolai","Rimsky-Korsakov"),
    ("Scott","Joplin"),
    ("Josquin","Des Prez")
]

// output:
/*
 (firstName: "Johann S.", lastName: "Bach")
 (firstName: "Josquin", lastName: "Des Prez")
 (firstName: "Duke", lastName: "Ellington")
 (firstName: "Scott", lastName: "Joplin")
 (firstName: "Claudio", lastName: "Monteverdi")
 (firstName: "W. A.", lastName: "Mozart")
 (firstName: "Nicolai", lastName: "Rimsky-Korsakov")
*/

func sortedNamesByLastName(in arr: [(String, String)]) -> [(String, String)] {

//    var arrForFirst = arr[0].1
    var newArr = [(firstName: String, lastName: String)]()
    var newTuple: (firstName: String, lastName: String)


    for v in arr {
//        var newTuple: (firstName: String, lastName: String)
        newTuple =  (firstName: v.0, lastName: v.1)
//        print(newTuple)
        newArr.append(newTuple)

    }
    
    newArr.sort {$0.lastName < $1.lastName}

//    print(newArr.first?.firstName)
    return newArr
}

print(sortedNamesByLastName(in: firstAndLastTuples))


// Pursuit Solution

//func sortedNamesByLastName(in arr: [(firstName: String, lastName: String)]) -> Int{
//
//    let sortedNames = arr.sorted { (random, stuff) -> Bool in
//        print("This is random \(random)")
//        print("This is stuff \(stuff )")
//        return true
//    }
//    return 0
//}
//
//print(sortedNamesByLastName(in: firstAndLastTuples))

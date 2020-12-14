//: [Previous](@previous)

import Foundation
/*
//1.Write a function named doubleNumber(_:) that takes in a Double and returns that number times two

func doubleNumber(_ num: Double) -> Double {
    
 
    var answer = num * 2
    
    return answer
}

print(doubleNumber(3.0))

// input: 99
// output: 198

// input: 3.0
// output: 6.0

//2. Write a function named smallest(of:and:) that takes in two Doubles and returns the smaller number. Don't use the built-in max() function.
// input: 2.3, 2.03
// output: 2.03

// input: 8.0, 3.0
// output: 3.0

func smallest(of: Double, and: Double) -> Double {
    
    if of < and {
        return of
    } else {
        return and
    }
}

smallest(of: 2.3, and: 2.03)

//3. Write a function named smallestValue(in:) that takes in an array of Doubles and returns the smallest Double

func smallestValue(arr: [Double]) -> Double {
    
    var smallest = arr[0]
    
    for value in arr {
        if value < smallest {
            smallest = value
        }
    }
    
    return smallest
}

var input = [1.0, 2, 3, 4, 5, 5]
// output: 1.0

// input: [-4,-59,-348,-34,-4]
// output: -348

smallestValue(arr: input)

//4. Write a function named occurrences(of:in:) that counts how many Characters in a String match a specific character.

func occurrences(of: String, char: Character) -> Int {
    
    var count = 0
    
    for value in of {
        if value == char {
            count += 1
        }
    }
    
    return count
}

// input: "hello", "l"
// output: 2

// input: "Now with some spaces", " "
// output: 3

occurrences(of: "Now with some spaces", char: " ")
 */
/*
// 5. Write a function called removeNils(from:) that takes an array of optional Ints and returns an array with them unwrapped with any nil values removed.

func removeNils(arr: [Int?]) -> [Int] {
    
    var newArr = [Int]()
    
    for value in arr {
        if let num = value {
            newArr.append(num)
        }
    }
    
    return newArr
}

// input: [1, nil, 9, nil, 10, nil]
// output: [1, 9, 10]
var input: [Int?] = [nil]
print(removeNils(arr: input ))
    // output: [1, 9, 10]

// input: [1, 2, 3]
// output: [1, 2, 3]

// input: [nil]
// output: []

// input: []
// output: []

//removeNils(arr: input )


// 6. Write a function named average(of:) that returns the average of an array of Doubles.

func average(arr: [Double]) -> Double {
    
    var count = 0.0
    var sum = 0.0
    var average: Double
    
    for val in arr {
        sum += val
        count += 1
    }
    
    average = sum / count
    
    return average
}

// input: [1,2,3,4,5]
// output: 3

// input: [1.5, 2.25, 4.5, -1.5]
// output: 1.6875

average(arr: [1.5, 2.25, 4.5, -1.5])


//7. Write a function named frequencyDictionary(of:) that takes a String as input and returns a dictionary that maps each Character to its number of occurrances.

// input: "hello"
// output: ["h": 1, "e": 1, "l": 2, "o": 1]

// input: "aaaaaAAA"
// output: ["a": 5, "A":3]

// input: "More words"
// output: ["M": 1, "o": 2, "r": 2, "e": 1, " ": 1, "w": 1, "d": 1, "s": 1]

func frequencyDictionary(of: String) -> [Character : Int] {
    
    var dict =  [Character : Int]()
    
    for element in of {
        if dict.keys.contains(element) {
            dict[element]! += 1
        } else {
            dict[element] = 1
        }
    }
    
    return dict
    
}

frequencyDictionary(of: "hello")
/*
// pursuit solution
func frequencyDictionary(of str: String) -> [Character: Int] {
  var dict = [Character: Int]()
  for char in str {
    if let count = dict[char] {
      dict[char] = count + 1
    } else {
      dict[char] = 1
    }
  }
  return dict
}
*/


//8. Write a function named value(_:isGreaterThanAverageOf:) that takes in an array of Doubles and a Double and returns whether the Double is greater than the average.

func value2(_ arr: [Double], isGreaterThanAverageOf: Double) -> Bool {
    
    var sum = Double()
    var average = Double()
    
    for i in arr {
        sum += i
    }
    
    average = sum / Double(arr.count)
    
    if isGreaterThanAverageOf > average {
        return true
    }


    return false
}
// input: 4.0, [1.0,2,3,4,5]
// output: true

// input: 3, [1,2,3,4,5]
// output: false

// input: 100.8, [1,42,1,541,42,5]
// output: false
// eric's solution
func value(_ input: Double, isGreaterThanAverageOf: [Double]) -> Bool {
    
    
    let average = isGreaterThanAverageOf.reduce(0.0, +) / Double(isGreaterThanAverageOf.count)
    
    print("the average is: \(average)")
    
    var result = true
    
    if input > average {
        result = true
    } else {
        result = false
    }
     
    return result
}

value( 4.0, isGreaterThanAverageOf: [1.0,2,3,4,5] )


//9. Write a function that finds the second smallest Int an an array of Ints

// input: [1, 2, 3, 4]
// output: 2

// input: [2, 1, 3, 4]
// output: 2

func secondSmallest(_ arr: [Int]) -> Int {
    
//    var smallestNum: Int
    
    var newArr = arr
    newArr.sort()
    print(newArr[1])
    
    return 0
}

secondSmallest([1, 2, 3, 4])
 


// 10. FizzBuzz

func fizzBuzz (num: Int) {
    
    for v in 1...num {
        if v % 5 == 0 && v % 3 == 0 {
            print("FizzBuzz")
        } else if v % 3 == 0 {
            print("Fizz")
        } else if v % 5 == 0 {
            print("Buzz")
        } else {
            print(v)
        }
    }
}

fizzBuzz(num: 15)
*/
var nums = [8, 7, 3, 29, 84]
for (v, i) in nums.enumerated() {
        print(v, i)
}

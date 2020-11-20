//String Excercises
/*
let str = "swift fundamentals"

//What is swift's Character alias: String.element

// 10/22 excercises
// 1. Write code that prints out all the numbers from 1 to 10 as a single string.
var numStr = ""
for element in 1...10 {
    numStr.append("\(element) ")
}
print(numStr)

// 2.Write code that prints out all the even numbers from 5 to 51 as a single string.

var evenStr = ""
for evenElement in 5...51 {
    if evenElement % 2 == 0 {
        evenStr.append("\(evenElement) ")
    }
}
print(evenStr)

// 3. Write code that prints out every number ending in 4 between 1 and 60 as a single string.

var endFour = ""
for element4 in 1...60 {
    if element4 % 10 == 4 {
        endFour.append("\(element4) ")
    }
}
print(endFour)

// 4. Print each character in the string "Hello world!"

var helloWorld = "world Hello!"

for value in helloWorld {
    print(value)
}

// 5. Print out the last character in the string below. You cannot use the Character literal "!" (i.e you must access myStringSeven's characters).

let myStringSeven = "Hello world!?"

var char = myStringSeven.index(before: myStringSeven.endIndex)

print(myStringSeven[char])

// 6. You are given a string stored in the variable aString. Create new string named replacedString that contains the characters of the original string with all the occurrences of the character "e" replaced by "*".

var aString = "Replace the letter e with *"
var replacedAString = ""

for element in aString {
    if element == "e" {
        replacedAString += "*"
        continue
    }
    replacedAString.append(element)
}
print(replacedAString)


// 7. You are given a string stored in variable aString. Create a new string called reverse that contains the original string in reverse order. Print the reversed string. You cannot used built-in reverse.

let aString = "this string has 29 characters"
var reverse = ""

for element in aString {
    reverse = String(element) + reverse
}
print(reverse)


// 8. You are given a string stored in variable aString. Print true if aString is a palindrome, and false otherwise. A palindrome is a string which reads the same backward or forward.

let str1 = "anutforajaroftuna"
var str2 = "!"

for element in str1 {
    str2 = String(element) + str2
}

var bool = str2 == str1

print(bool)


// 9. You are given a string stored in variable problem. Write code so that you print each word of the string on a new line.

let problem = "split this string into words and print them on separate lines"
var strWSpace = " "

for element in problem {
    if element == " " {
        strWSpace += "\n"
        continue
    }
    strWSpace.append(element)
}
print(strWSpace)
// pursuit solution
let problem2 = "split this string into words and print them on separate lines"

let words = problem.split(separator: " ")

for word in words {
  print(word)
}


// 10. You are given a string stored in variable problem. Write code that prints the longest word in the string.

let problem = "find the longest word in the problem description "
var longWord = ""
var longestWord = ""

//for element in problem {
////    longWord.append(element)
//
//    if element == " " {
//        if longWord.count > longestWord.count {
//            longestWord = longWord
////        print("space")
//        }
//        longWord = ""
//    }
//    longWord.append(element)
////    print(longWord)
//}
//print(longestWord)

//pursuit solution
var problem2 = problem.split(separator: " ")
//print(problem2)
var longerWord = ""

for word in problem2 {
    if word.count > longerWord.count {
        longerWord = String(word)
    }
}
print(longerWord)
 


// 11. Given a string in English, create a tuple containing the number of vowels and consonants.

let vowels = "aeiou"
let consonants = "bcdfghjklmnpqrstvwxyz"
let input = "Count how many vowels I have!"

// 12. Given a string of words separated by a " ". Write code that prints out the length of the last word.
//If there is no last word print out "No last word".
//Example: Input: "How are you doing this Monday?"
//Output: 7

var str = "How are you doing this Monday?"
var splitStr = str.split(separator: " ")
var lastWordLength = Int()

print(splitStr)

if splitStr.last != nil {
    var last = splitStr.last
    for element in last! {
        lastWordLength += 1
    }
    print(lastWordLength)
} else {
    print("No last word")
}
//pursuit solution

let str = "How are you doing this Monday?"

let words = str.split(separator: " ")

if let lastWord = words.last {
  print(lastWord.count) // 7
} else {
  print("No last word")
}

*/

// 13.

// twitter hackerrank
//
//var str = "10 2 4, 12 2 2 "
//var cleaned = str.split(separator: " ")
//print(cleaned)
//var arr = Int(cleaned[0]) ?? 0
//print(arr)

//while scen.count >= 0 {}
//for i in 0...scen.count{
//        print(scen)
//    scen.removeFirst()
//    }
/*
var scen = ["10 2 5", "12 4 4", "6 2 2"]
var scen2 = ["8 4 2", "7 2 3"]


for i in scen2 {
    let info = i.split(separator: " ")
//    print(info)
    var budget = Int(info[0]) ?? 0
    var cost = Int(info[1]) ?? 0
    let freebieCost = Int(info[2]) ?? 0

 
    var withClient = 0
    var recievedContainers = Int()
    var newAmt = Int()

    
    while budget >= cost {
        budget = budget/cost
        recievedContainers = budget
        withClient = cost % budget
        cost = freebieCost

        
        if budget >= cost {
            newAmt = budget + withClient

            recievedContainers += newAmt / cost
            print(recievedContainers)
            budget = budget / cost
        } else {
            print(recievedContainers)
        }
  
    }
}
*/


var people = 8
var groups = 4
var groupCreated = [Int]()

var arr = [Int]()

var arrCount = groups - 1
var largestGroup = people - arrCount
var remainingPeople = 0
var remainingGroups = arrCount

while arrCount > 0 {


    remainingPeople = people - largestGroup
    if arr.isEmpty {
        arr.insert(largestGroup, at: 0)
    }
    if remainingPeople == remainingGroups {
        arr.insert(1, at: 0)
        remainingPeople = remainingPeople - 1
        remainingGroups = remainingGroups - 1
    } else {
        arr.insert(1, at: 0)
    }
    arrCount = arrCount - 1

    }
print(arr)

//groupCreated.insert(contentsOf: arr, at: 0)
//groupCreated.insert(0, at: 0)
//
//
//print("our groups are \(groupCreated)")















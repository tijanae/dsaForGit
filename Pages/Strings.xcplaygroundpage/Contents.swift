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
 
 */



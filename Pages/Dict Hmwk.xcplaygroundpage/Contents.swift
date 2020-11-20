

import Foundation

// Dictionaries
/*
//1. a. Set eveAppleCount equal to the number of apples that Eve has

var applesDict: [String: Int] = ["Adam": 3,
                                 "Beth": 5,
                                 "Cal": 3,
                                 "Dan": 5,
                                 "Eve": 4]

let eveAppleCount = applesDict["Eve"] ?? 0
print(eveAppleCount)

// b. Change the number of apples that Adam has to 4

applesDict["Adam"] = 4
print(applesDict)

// c. Set calAndDanAppleCount equal to the sum of Cal and Dan

let calAndDanAppleCount = applesDict["Cal"]! + applesDict["Dan"]!

print(calAndDanAppleCount)

// d. Set all the values in applesDict to 0

/*
 applesDict.forEach { applesDict[$0.key] = 0 }
 print(applesDict) // ["Cal": 0, "Dan": 0, "Beth": 0, "Adam": 0, "Eve": 0]
 */

// 2. a. Set russiaCapital equal to Russia's capital using citiesDict

var citiesDict: [String: String] = ["Afghanistan": "Kabul",
                                    "Russia": "",
                                    "Iceland": "Reykjavik"]

citiesDict["Russia"] = "Moscow"

print(citiesDict)

// b. Add a new key value pair "Jamaica" and its capital "Kingston"

citiesDict["Jamaica"] = "Kingston"

// c. Add a new key value pair "Indonesia" and its capital "Jakarta"

citiesDict["Indonesia"] = "Jakarta"

// 3. a. Create a dictionary that represents the table below listing an authors name and their comprehensibility score.

/*
| Author Name |    Score |
| :--: | :--: |
| Mark Twain |    8.9 |
| Nathaniel Hawthorne    | 5.1 |
| John Steinbeck    | 2.3 |
| C.S. Lewis | 9.9 |
| Jon Krakauer | 6.1 |
*/

var authorScores = [String: Double] ()

authorScores = ["Mark Twain": 8.9, "Nathaniel Hawthorne": 5.1, "John Steinbeck": 2.3, " C.S. Lewis": 9.9, "Jon Krakauer": 6.1]

authorScores["Erik Larson"] = 9.2


// 4. You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the best score and print his full name.

var peopleWithScores: [[String: String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": "13"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": "23"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": "10"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": "3"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": "16"
    ]
]


var highestScoringName = ""
var fullName = ""
var currentHighScore = 0
var intValue = 0
/*
 
 // the code below is broken
 // issue #1 - dictionaries are unordered. so with 2 for loops- you get a randomized list of items.
 // by staying in the original loop you save space and can access each block of the dictionary with the syntax i["key"] where you name the key. Remember what returns is an optional value. In this particular problem- we need the value to be unwrapped and converted into a int (which also will create an optional). So 1 guard statement separated with a , (which indicates AND) will unwrap everything safely.
for i in peopleWithScores {
    for (key, value) in i {
        if key == "firstName" {
            fullName.append(key)
        }
        if key == "lastName"{
            fullName.append(key)
        }
        if key == "score" {
            intValue = Int(value)!
            if intValue > currentHighScore {
                currentHighScore = intValue
                highestScoringName = fullName
                print(highestScoringName)
            }
            
        }
        fullName = ""
    }
}
print(highestScoringName)
*/

for i in peopleWithScores {
  // print(i)

guard let scoreNum = i["score"], let thisScore = Int(scoreNum) else{break }

  
  if thisScore > currentHighScore {
    currentHighScore = thisScore
    highestScoringName = "\(i["firstName"] ?? "") \(i["lastName"] ?? "")"
  }
  
   
  }
print(highestScoringName)

/*
// pursuit solution
var highestScoringName = ""
var highestScore = 0
for scoreDict in peopleWithScores {
  if let scoreStr = scoreDict["score"],
     let score = Int(scoreStr),
     let firstName = scoreDict["firstName"],
     let lastName = scoreDict["lastName"] {
    if score > highestScore {
      highestScore = score
      highestScoringName = firstName + " " + lastName
    }
  }
}
print(highestScoringName)
 */


//5. Write code below such that cubeDict maps the numbers between 1 and 20 inclusive to their cubes. A number's cube is that number multiplied by itself twice:

// 2 ^ 3 = 2 * 2 * 2 = 8

var cubeDict = [Int: Int]()

/*
 Sample output:
 
 cubeDict.count // 20
 cubeDict[2] // 8
 cubeDict[3] // 27
 cubeDict[20] // 8000
 cubeDict[14] // 2744
*/

for i in 1...20 {
    cubeDict[i] = i * i * i
    
}

print(cubeDict)
cubeDict.count // 20
cubeDict[2] // 8
cubeDict[3] // 27
cubeDict[20] // 8000
cubeDict[14] // 2744
*/

//6. Find the most common letter in the string below. Use a dictionary to generate your solution that maps a character to the number of times it appears in the string. Ignore whitespaces and capitalization.

let myString = "We're flooding people with information. We need to feed it through a processor. A human must turn information into intelligence or knowledge. We've tended to forget that no computer will ever ask a new question."

var frequencyDict = [Character: Int]()
var mostFrequentChar: Character = "?"
var highestValue = Int()
// Excpected output: "e"
var cleanedStr = myString.replacingOccurrences(of: " ", with: "").lowercased()


for i in cleanedStr {
    
    
    if frequencyDict.keys.contains(i) {
        frequencyDict[i]! += 1
    } else {
            frequencyDict[i] = 1
    }
    
    guard let count = frequencyDict[i] else {
        break
    }
    if count > highestValue {
        highestValue = count
        mostFrequentChar = i
    }
    
}

print(frequencyDict)
print(mostFrequentChar)


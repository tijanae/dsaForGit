//: [Previous](@previous)

import UIKit

// MARK: DICTIONARIES

// dictionaries are a collection of unordered pairs of key, value elements. The keys are required to be unique.
// the keys are required to conform to hashable protocol.

// creating a dictionary

//  - using a generic initializer
var usingGenericIntializerDictionary = Dictionary<String, Int>()

usingGenericIntializerDictionary["Alex"] = 7
print(usingGenericIntializerDictionary) //["Alex":7]

// - using subscript syntax

var subscriptDictSynax = [Int:Int]()
subscriptDictSynax[2020] = 11
print(subscriptDictSynax) // [2020:11]

subscriptDictSynax[2020] = 12
print(subscriptDictSynax) // [2020:12]

// - dictionary literal

var cities = ["Sweden":"Stockholm", "California":"Los Angeles", "Florida":"Miami"]
print(cities) // ["Sweden":"Stockholm", "California":"Los Angeles", "Florida":"Miami"]

struct Car: Hashable {
    let brand: String
    let wheels: Int
    let color: UIColor
}

let nissan = Car(brand: "Nissan", wheels: 4, color: .black)
let honda = Car(brand: "Honda", wheels: 4, color: .red)

var carsDict = [nissan: 20, honda: 15]

// Inspecting a Dictionary

// - isEmpty

if carsDict.isEmpty {
    print("no cars at the moment")
}else {
    print("let me show you what we got.")
}

// - count
print("we have \(carsDict.count) cars")

// Accessing Keys and values

// - subscript [keys]
// accessing values from a dictionary may be optional as the key may not exsit.
let numberOfNissans = carsDict[nissan] ?? 0
print(numberOfNissans) // let numberOfNissans = carsDict[nissan] prints "Optional(20)"
//to unwrap add nil coelescing to line 60 - ?? 0
// or optional binding
if let numberOfHondas = carsDict[honda] {
    print("there are \(numberOfHondas) hondas")
} else {
    print("There arent any hondas")
}

// - keys
let allCars = carsDict.keys
// print(allCars) // this gives the entire object- it reads like [__lldb_expr_3.Car(brand: "Honda", wheels: 4, color: UIExtendedSRGBColorSpace 1 0 0 1) to clean this up- loop through

for car in allCars {
    print("We have \(car.brand)s" )
}


// - value
// like keys, values can be accessed
var gradeDict = ["Cherri": 90, "Mark": 87, "Karti": 94]
let grades = gradeDict.values
print(grades)

// - first
// remember dictionaries arent ordered- so the first value may not appear as it was entered
let firstGrade = gradeDict.first
print(firstGrade)

// - random element
let randomStudent = gradeDict.randomElement()

// Adding keys & values

// - update value
let newGrade = gradeDict.updateValue(92, forKey: "Mark")
let addStudent = gradeDict.updateValue(93, forKey: "Xaiver")
//note updateValue can modify values that are already in the dict as well as add values to the dictionary

print(gradeDict)

// subscript[key]

gradeDict["Esther"] = 96
print(gradeDict)

// Removing Keys

// filter()

let filteredStudents = gradeDict.filter {$0.value > 93} // trailing closure syntax

print(filteredStudents)
print("there are \(filteredStudents.count) students with a grade above 93 ")

print(gradeDict) // it doesnt alter the actual grade book :)

// removeValue()

gradeDict.removeValue(forKey: "Karti")
print(gradeDict)

// removeAll()
gradeDict.removeAll()

print(gradeDict)

// Compare Dictionaries

// using ==
var dict = [2010 : 2]
var dict2 = [2010 : 2]

if dict == dict2 {
    print("theyre the same")
}

// - using !=

var dict3 = [2020 : 2]
var dict4 = [2010 : 2]

if dict3 != dict4 {
    print("not the same")
}





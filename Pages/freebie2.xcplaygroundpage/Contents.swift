//: [Previous](@previous)

import Foundation
/*
Input: words = ["word","world","row"], order = "worldabcefghijkmnpqstuvxyz"
Output: false
Explanation: As 'd' comes after 'l' in this language, then words[0] > words[1], hence the sequence is unsorted.
*/
var  order = "hlabcdefgijkmnopqrstuvwxyz"

var dict: [Character: Int] = Dictionary()

for (i, v) in order.enumerated() {
    dict[v] = i
  }

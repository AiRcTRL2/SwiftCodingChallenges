//: [Previous](@previous)

import Foundation

/// Returns true where S1 and S2 differ in a maximum of 3 letters or less
/// Order matters
/// Swift Coding Challenges: Challenge 11
func maxThreeDifferentLetters(stringOne: String, stringTwo: String) -> Bool {
    guard stringOne.count == stringTwo.count else {
        return false
    }
        
    var numberOfDifferences = 0
    
    for letter in 0...stringOne.count-1 {
        let stringOneIndex = stringOne.index(stringOne.startIndex, offsetBy: letter)
        let stringTwoIndex = stringOne.index(stringTwo.startIndex, offsetBy: letter)
        
        if stringOne[stringOneIndex] != stringTwo[stringTwoIndex] {
            numberOfDifferences += 1
        }
        
        if numberOfDifferences > 3 {
            return false
        }
    }
    
    return true
    
}

var listToTest = [["Clamp", "Cramp"], ["Clamp", "Crams"], ["Clamp", "Grams"], ["Clamp", "Grans"], ["Clamp", "Clam"], ["clamp", "maple"]]

for pair in listToTest {
    print(pair, maxThreeDifferentLetters(stringOne: pair[0], stringTwo: pair[1]))
}

//: [Next](@next)

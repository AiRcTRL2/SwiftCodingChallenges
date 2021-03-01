//: [Previous](@previous)

import Foundation

// using loop
func reverseWordsInStrings(string: String) -> String {
    let arrayOfStrings = string.components(separatedBy: " ")
    let numberOfWords = arrayOfStrings.count - 1
    var wordCounter = 0
    let array = arrayOfStrings.map { Array($0) }
    
    var lettersInWord = 0
    var lettersCountedInWord = 0
    var reversedWordsInString = ""
    
    while wordCounter <= numberOfWords {
        lettersInWord = array[wordCounter].count-1
        
        if lettersCountedInWord == lettersInWord {
            reversedWordsInString += String(array[wordCounter][lettersInWord-lettersCountedInWord])
            reversedWordsInString += " "
            
            wordCounter += 1
            lettersCountedInWord = 0
        } else {
            reversedWordsInString += String(array[wordCounter][lettersInWord-lettersCountedInWord])
            lettersCountedInWord += 1
        }
    }
        
    return reversedWordsInString
}

func noLoopSolution(string: String) -> String {
    let array = string.components(separatedBy: " ")
    let wordArrays = array.map { String($0.reversed()) }
    return wordArrays.joined(separator: " ")
}

var list = ["Swift Coding Challenges"]

for sentence in list {
    print(reverseWordsInStrings(string: sentence))
    print(noLoopSolution(string: sentence))
}
//: [Next](@next)

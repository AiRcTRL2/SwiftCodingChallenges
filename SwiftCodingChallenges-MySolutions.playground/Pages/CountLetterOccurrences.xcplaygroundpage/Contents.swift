//: [Previous](@previous)

import Foundation

/// Returns occurences of a letter in a string as a run-length encoded string in O(n) time
func countLetterOccurrences(string: String) -> String {
    /// Holds the encoding
    var runLengthEncode = ""
    /// Holds the current letter being checked
    var currentLetter: Character? = nil
    /// Holds the number of times the letter was seen consecutively
    var seenCount = 0
        
    // Loop through the array
    for letter in string {
        if letter == currentLetter {
            seenCount += 1
        } else {
            if let letter = currentLetter {
                runLengthEncode += "\(letter)\(seenCount)"
            }
            
            currentLetter = letter
            seenCount = 1
        }
    }
    
    // if it's the final index, append whatever we have left before exiting
    if let charUnwrapped = currentLetter {
        runLengthEncode += String(charUnwrapped)
        runLengthEncode += String(seenCount)
    }
    
    
    return runLengthEncode
}

var testCases = ["aabbcc", "aaabaaabaaa", "aaAAaa"]

for item in testCases {
    print(countLetterOccurrences(string: item))
}
//: [Next](@next)

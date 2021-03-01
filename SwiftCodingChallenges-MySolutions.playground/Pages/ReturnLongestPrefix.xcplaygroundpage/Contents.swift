//: [Previous](@previous)

import Foundation

/// Returns the longest prefix of a set of words contained in a string delimited by a whitespace
/// - Complexity: O(n) -- Book's solution was O(n^2) woohoo
/// - Challenge: 12
func parseLongestPrefix(string: String) -> String {
    var stringArray = string.components(separatedBy: " ")
    stringArray.sort()
    
    var twoDArray: [[Character]] = []
    
    for string in stringArray {
        twoDArray.append(Array(string))
    }
    
    /// holds the common letters
    var commonPrefix = ""
    /// monitors which words were checked this cycle
    var wordsChecked = twoDArray.count-1
    /// monitors the index of the current letter we are checking
    var currentLetterIndex = 0
    /// holds the value of the current letter we are checking
    var currentLetter: Character?
    
    // Cycle through each word and verify our current letter index is not larger than the smallest word
    while wordsChecked >= 0 && currentLetterIndex < stringArray.first?.count ?? 0 {
        // get the current letter to check
        let letter = twoDArray[wordsChecked][currentLetterIndex]
        
        // if the current letter we are checking against is nil, set it and continue the loop to the next word
        if currentLetter == nil {
            currentLetter = letter
            wordsChecked -= 1
            continue
        }
        
        // if we find a mismatch, break the loop
        if currentLetter != letter {
            break
        }
        
        // decrement the word
        wordsChecked -= 1
        
        // if we reach zero without conflict, add the letter to our common prefix, reset our word count, incrememnt our currentLetterIndex counter and set current letter to nil
        if wordsChecked == 0 {
            currentLetterIndex += 1
            wordsChecked = twoDArray.count-1
            commonPrefix += String(letter)
            currentLetter = nil
        }
    }
    
    return commonPrefix
}

print(parseLongestPrefix(string: "swift switch swill swim"))
print(parseLongestPrefix(string: "flip flap flop"))

//: [Next](@next)
